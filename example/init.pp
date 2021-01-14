include hashi_stack::repo
package { 'packer':
  ensure  => installed,
  require => Class['Hashi_stack::Repo'],
}
