class test::config
{
  $permit_root_login = $::test::permit_root_login
  file { '/tmp/sshd.conf':
    ensure => file,
    content => template('/etc/puppetlabs/code/environments/production/modules/test/templates/sshd_config.erb')
  }
}
