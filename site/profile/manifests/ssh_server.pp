class profile::ssh_server{
    package{'openssh-server':
          ensure =>present,
    }
    
    service {'sshd':
      ensure => 'running',
      enable =>'true'
    }
    
    ssh_authorized_key {
      'root@master.puppet.vm':
      ensure =>present,
      user => 'root',
      type => 'ssh-rsa',
      key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0XJlmO6MGdxsfSovMe/qOFdJ7bibwa0YR5jMSFwDmpSQStjLkIKphJC6E9fgXwd4+DMExZ+3i6oXJoMIcTiLAMolgKmI3XCwxig/FdMDqQH1liYNDZnyuZvoxeNRiPpPPC6IPDM4v+m00wMnTIVj2fHb1CtbcxSZbx2tenrj64Ys321kPjTNsWFW0/HocWlrIbDWiKD6wWa0QKpqt2OG7hpYHl2GifTVoRy/cdmNRmAjskD4rNco71l4GXvb/+f5HRjugBZlnOvWyKE21rROWpJVoN/XB5I3R+Mj9/6ksZ84/fPPdnk95mn8N5gC39vjyf5A90MQs5/pmhWbtxhEH',
    }
}
