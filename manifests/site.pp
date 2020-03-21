node default {
  file {'/root/README':
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
