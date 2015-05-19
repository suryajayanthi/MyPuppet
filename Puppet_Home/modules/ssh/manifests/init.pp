class ssh {
  class { '::ssh::install': } ->
  class { '::ssh::params' : } -> 
  class { '::ssh::config': } ->
  class { '::ssh::service': } -> 
  Class['ssh']
}