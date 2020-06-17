 node default{

  file { '/root/PUPPET' :
  ensure 	=> file,
  content => 'welcome to puppet world',
  }
}
