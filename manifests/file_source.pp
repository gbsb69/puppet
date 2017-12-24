file { '/etc/motd':
  ensure => present,
  source => '/examples/files/motd.txt',
  owner => 'ec2-user',
  mode => '0644',
}
