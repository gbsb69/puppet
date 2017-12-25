file {'/home/gsang':
  ensure => directory,
  owner => 'gsang',
  mode => '770',
}  

file {'/home/gsang/.ssh':
  ensure => directory,
  owner => 'gsang',
  mode => '770',
}

user {'gsang':
  ensure => present,
  uid => '3001',
  home => '/home/gsang',
  shell => '/bin/bash',
}
ssh_authorized_key {'gsang@test.local':
  user => 'gsang',
  type => 'ssh-rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCbGi9gxIHLSpSILTwjZe1wHA8UcXstphKL/Lb19AEfUJPDJ8YpzsUGDWXLHhGTgj5FYevoLs7Kh7oLt2UZvhZ3UCo1oGjs5VMei9rdAUnzeSIwowiEUqoNyECfoK2xCC3KQcFMZa9uBjqR45HHUx2gvjLoD7D5XMQLUxFrMWM5cJwkRc7ckCHiaMWKty612Zx1J52nf5HR8epE97a/huFfpBRAAPJ2LTQPQQlmBAFlIdgpNDCAO6DR9+KK03vIrIEbHjhgK+tl5DETDo3Zn9xGGUmd8kMTCCQxiKc2Lm4fmLHn/ctkjlfoWIgQQeojkST6IrGTh/F+UiWAflIWmweh',
}
