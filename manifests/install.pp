class test::install (
  String $package_name = $test::package_name,
){
  package { $package_name:
    ensure => present,
  }
}
