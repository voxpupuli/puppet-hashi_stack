# This class installs the hashicorp repository
#
# @summary Set up the package repository for the HashiCorp Stack components
#
# @example Inclusion using defaults
#   include hashi_stack::repo
#
# @example Include repo and install packer as package
#   include hashi_stack::repo
#   package { 'packer':
#     ensure  => installed,
#     require => Class['Hashi_stack::Repo'],
#   }
#
# @param priority A numeric priority for the repo, passed to the package management system
# @param proxy The URL of a HTTP proxy to use for package downloads (YUM only)
# @param key_id GPG key to authenticate Apt package signatures.
# @param key_source The location of an existing GPG key file to copy.
# @param description Repository description
# @param rpm_base Base URL for the Yum repository
# @param repo_gpgcheck enables gpg validation of packages from the repo
# @param repo_enabled enables/disables the repository
#
class hashi_stack::repo (
  Optional[Integer] $priority = undef,
  String $proxy = 'absent',
  String $key_id = '798AEC654E5C15428C8E42EEAA16FCBCA621E701',
  Stdlib::HTTPSUrl $key_source = 'https://apt.releases.hashicorp.com/gpg',
  String $description = 'HashiCorp package repository.',
  String $rpm_base = 'https://rpm.releases.hashicorp.com',
  Integer[0,1] $repo_gpgcheck = 0,
  Integer[0,1] $repo_enabled = 1,
) {
  $arch = $facts['os']['architecture'] ? {
    'aarch64' => 'arm64',  # 'aarch64' is official, but Hashicorp uses 'arm64'
    default   => $facts['os']['architecture'],
  }

  case $facts['os']['family'] {
    'Debian': {
      include apt

      apt::source { 'HashiCorp':
        ensure       => 'present',
        architecture => $arch,
        comment      => $description,
        location     => 'https://apt.releases.hashicorp.com',
        repos        => 'main',
        key          => {
          'name'   => 'hashicorp-archive-keyring.asc',
          'source' => $key_source,
        },
        include      => {
          'deb' => true,
          'src' => false,
        },
        pin          => $priority,
      }
    }
    'RedHat': {
      yumrepo { 'HashiCorp':
        descr         => $description,
        baseurl       => "${rpm_base}/RHEL/\$releasever/\$basearch/stable",
        gpgcheck      => 1,
        gpgkey        => $key_source,
        repo_gpgcheck => $repo_gpgcheck,
        enabled       => $repo_enabled,
        proxy         => $proxy,
        priority      => $priority,
      }
    }
    default: {
      fail("\"${module_name}\" provides no repository information for OSfamily \"${facts['os']['family']}\"")
    }
  }
}
