class ssh::params {
  case $::osfamily {
    'Debian': {
      $sshd_package_name = 'ssh'
      $sshd_service_name = 'ssh'
      $sshd_service_config = '/etc/ssh/sshd_config'
    }
    'Redhat': {
      $sshd_package_name = 'openssh-server'
      $sshd_service_name = 'sshd'
      $sshd_service_config = '/etc/ssh/sshd_config'
    }
    'Solaris': {
      $sshd_package_name = 'SUNWssh'
      $sshd_service_name = 'ssh'
      $ssh_service_config = '/etc/ssh/sshd_config'
    }
    default: {
      fail("Login class does not work on osfamily : ${::osfamily}")
    }
  }
}