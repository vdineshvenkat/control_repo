node default{
}

node 'centos7' {
include role::master_server
}


node /^web/ {
 incdlude role::app_server
}

node /^db/ {
 incdlude role::db_server
}
