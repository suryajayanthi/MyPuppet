class ssh::params {
  case $::osfamily {
    'Debian': {
      $sshd_package = 'ssh'
      $sshd_service = 'ssh'
      $sshd_service_config = '/etc/ssh/sshd_config'
    }
    'Redhat': {
      $sshd_package = 'openssh-server'
      $sshd_service = 'sshd'
      $sshd_service_config = '/etc/ssh/sshd_config'
    }
    'Solaris': {
      $sshd_package = 'SUNWssh'
      $sshd_service = 'ssh'
      $ssh_service_config = '/etc/ssh/sshd_config'
    }
    default: {
      fail("Login class does not work on osfamily : ${::osfamily}")
    }
  }
}