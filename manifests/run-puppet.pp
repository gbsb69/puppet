# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}


file {'/tmp/hello.txt':
  content => 'Hello world!'
}

file {'/tmp/test2.txt':
   content => 'test2'
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/5',
}

