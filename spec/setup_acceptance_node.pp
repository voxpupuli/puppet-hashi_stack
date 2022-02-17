# Needed for os.distro.codebase fact on ubuntu 18 on puppet 6
if $facts['os']['name'] == 'Ubuntu' and $facts['os']['release']['full'] == '18.04' and versioncmp($facts['puppetversion'], '7') <= 0 {
  package{'lsb-release':
    ensure => present,
  }
}
