class test::params {
  $permit_root_login = 'yes'
  case $facts['os']['family'] {
    'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
    }
    'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    }
    default: {
      fail("${facts['os']['family']} is not supported")
    }
  }
}
