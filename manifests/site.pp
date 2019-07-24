node default {

}
#classification for just the master
node 'master.puppet.vm' {
  include role::master_server
}
