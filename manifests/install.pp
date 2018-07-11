class ssh::install(
  $package_name = $::ssh::package_name,
  $ensure       = $::ssh::ensure,
) {
  package { 'ssh-package':
    ensure => $ensure,
    name   => $package_name,
  }
}

