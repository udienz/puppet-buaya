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

 file { '/usr/local/bin/rsynclog-to-exfer.sh':
 source => 'puppet:///modules/buaya/rsync/rsynclog-to-exfer.sh',
 ensure => 'present',
 mode => '755',
 owner => 'ftpmaster',
 }

 file { '/usr/local/bin/rsync2xferlog.py':
# source => 'puppet:///modules/buaya/rsync/rsync2xferlog.py',
 ensure => 'absent',
# mode => '755',
# owner => 'ftpmaster',
 }
}
# vim:syntax=puppet:set ts=2 sw=2 et:
