file { '/etc/motd':
  ensure => present,
  source => '/examples/files/motd.txt',
  owner => 'ec2-user',
  mode => '0644',
}

file {'/etc/config_dir':
  source => '/examples/files/config_dir',
  recurse => true,
}
