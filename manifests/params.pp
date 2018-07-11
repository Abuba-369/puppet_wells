class ssh::params {
  $permit_root_login = false
  $port = 22
  $service_ensure = 'running'
  $service_enable = true

  case $::operatingsystem {
    'Debian', 'Ubuntu': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
    }
    /^RedHat|CentOS/: {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
      notify{ "${0} is our operating system!": }
    }
    default: {
      fail("${::operatingsystem} is not supported!")
    }
  }
}

