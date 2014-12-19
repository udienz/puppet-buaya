class buaya::rsync {
 package { 
  'rsync':
 ensure => installed,
 enable => true,
 }

 file { '/etc/default/rsync':
 source => 'puppet:///modules/buaya/rsync/etc-default',
 ensure => present,
 mode => '644',
 owner => 'root',
 }
}
