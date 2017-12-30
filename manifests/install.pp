class test::install (
  String $package_name = $test::package_name,
  String $ensure       = $test::ensure,
){
  package { $package_name:
    ensure => $ensure,
  }
}
