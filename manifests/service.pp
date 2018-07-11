class ssh::service(
 $service_name   = $::ssh::service_name,
 $service_ensure = $::ssh::service_ensure,
 $service_enable = $::ssh::service_enable,
) {
  service { 'ssh-service':
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
  }
}

