class custom::base::environment_ps1()
{
  $rgb_term_color = '252,57,31'

  if ($environment =~ /(acceptance|preprod)/)
  {
    $rgb_term_color = '234,236,35'
  }
  elsif ($environment =~ /test/)
  {
    $rgb_term_color = '20,240,240'
  }
  else
  {
    $rgb_term_color = '203,204,205'
  }

  file { '/etc/profile.d/set_command_prompt.sh':
    uid     => 0,
    gid     => 0,
    mode    => 0644,
    content => epp('custom/base/set_command_prompt.sh.erb', {'rgb_term_color' => $rgb_term_color }),
  }
}
