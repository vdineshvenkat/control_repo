class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCVpv2/b9qoIHKlt55NAkL+YpGRmDFGEQPztVWznIJIJkdLwzyDwmaqJJS0oGrSjKBTxqwpdLhPgXC3qIAFf5TcxUmeGZW+p+plbNqitpJJUCtPMZHh36/5nZRSEO/q+Wnr/6Y7lgZ74Dft8dgOnxJX1PBuceLa6YiKt4J5mUefE/f2z7fkFvt8v9fwvXxczNU0fjFltkgAj9hHOs0zvpUypgpYI1+KBEN1bo6KU0RsF5uDdMxlkiWFdM+S8RjTdCTYe+rlzCAyYHhcOkHib++1SRKkkt9TnYyYvYzGDlpN3QX2vkUy1knvFKBf+w4d5aijmrPejk+YeeHiHCuMBU/T',
  }  
}
