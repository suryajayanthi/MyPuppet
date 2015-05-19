class ssh::service {
  service { "sshd":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    # Disabling the below require paramerter because it creates cyclic dependency.
    # require => Class['::ssh:config'],
  }
}