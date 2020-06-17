 node default{

  file { '/root/PUPPET' :
  ensure  => file,
  content => 'welcome to puppet world',
  owner => dinesh,
  mode => 0600,,
  }
}
