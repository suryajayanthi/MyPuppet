class ssh::params {
  case $::osfamily {
    'Debian': {
      $sshd_package = 'ssh'
      $sshd_service = 'ssh'
    }
    'Redhat': {
      $sshd_package = 'openssh-server'
      $sshd_service = 'sshd'
    }
    default: {
      fail("Login class does not work on osfamily : ${::osfamily}")
    }
  }
}
