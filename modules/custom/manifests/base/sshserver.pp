class custom::base::sshserver()
{
  class { '::ssh::server': 
    storeconfigs_enabled => true,

    options => {
      'AddressFamily'                   => 'any',
      'Protocol'                        => 2,
      'ListenAddress'                   => ['0.0.0.0', '::1'],
      'Port'                            => ['22'],
      'PasswordAuthentication'          => 'yes',
      'SyslogFacility'                  => 'AUTH',
      'UsePAM'                          => 'yes',
      'X11Forwarding'                   => 'no',
      'PermitRootLogin'                 => 'no',
      'ChallengeResponseAuthentication' => 'no',
      'PrintMotd'                       => 'yes',
      'AcceptEnv'                       => 'LANG LC_*',
      'UsePrivilegeSeparation'          => 'yes',
      'KeyRegenerationInterval'         => 3600,
      'ServerKeyBits'                   => 1024,
      'LogLevel'                        => 'INFO',
      'LoginGraceTime'                  => 30,
      'StrictModes'                     => 'yes',
      'RSAAuthentication'               => 'yes',
      'PubkeyAuthentication'            => 'yes',
      'IgnoreRhosts'                    => 'yes',
      'RhostsRSAAuthentication'         => 'no',
      'HostbasedAuthentication'         => 'no',
      'PermitEmptyPasswords'            => 'no',
      'X11DisplayOffset'                => 10,
      'PrintLastLog'                    => 'yes',
      'TCPKeepAlive'                    => 'yes',
      'Subsystem'                       => 'sftp /usr/lib/openssh/sftp-server',
    }
  }
}

