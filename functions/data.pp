function test::data {
 $base_params = {
  'test::ensure' => 'present',
  'test::permit_root_login' => 'yes',
  }
  
  case $facts['os']['family'] {
    'Debian': {
      $os_params = {
        'test::package_name' => 'openssh-server',
        'test::service_name' => 'ssh',
       }
     }
    'RedHat': {
      $os_params = {
        'test::package_name' => 'openssh-server',
        'test::service_name' => 'sshd',
       }
    }
    default: {
        fail("$facts['os']['family']is not supported")
     }
    }
 $base_params + $os_params
}
