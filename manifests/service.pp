class test::service (
  String $service_name = $::test::service_name,
){
  service { $service_name:
   ensure     => running,
   enable     => true,
   hasstatus  => true,
   hasrestart => true,
  }
}
