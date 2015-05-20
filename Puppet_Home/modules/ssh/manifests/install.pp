class ssh::install {
  
  $package_name = $::osfamily ? {
    'RedHat'  =>  "openssh-server",
    'Debian'  =>  "openssh-server",
    'Solaris' =>  "openssh",
    # default   =>  "ssh",
    default   =>  fail("Module ssh does not support osfamily: ${::osfamily}")
  }
  package {'ssh':
    ensure  =>  present,
    name    =>  $package_name,
  }
}