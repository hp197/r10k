class custom::base::locale()
{
  class { '::locales': 
    default_locale => 'en_GB.UTF-8',
    locales        => ['en_GB.UTF-8 UTF-8', 'nl_NL.UTF-8 UTF-8'],
  }
}

