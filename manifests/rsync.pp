class buaya::rsync {
 package { 
  'rsync':
 ensure => installed,
 }

 service { 'rsync':
 ensure => running,
 }
 file { '/etc/default/rsync':
 source => 'puppet:///modules/buaya/rsync/etc-default',
 ensure => present,
 mode => '644',
 owner => 'root',
 }
}
