node default {

}
#using $ for content, will make the puppet master get the fqdn the agent submitted when it first ran
#facts are just preset variables by puppet
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
      ensure=>file,
      content=>"Welcome to $fqdn\n",
  }
}


node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
