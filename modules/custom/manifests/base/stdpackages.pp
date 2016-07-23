class custom::base::stdpackages()
{
  package {[ 'vim', 'sudo', 'screen' ]:
    ensure => present,
  }
}

