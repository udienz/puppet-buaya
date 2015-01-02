class buaya::webalizer {

 file { '/etc/cron.daily/webalizer':
  ensure => 'absent',
 }
 
 file { '/etc/webalizer/www.conf':
  source => 'puppet:///modules/buaya/webalizer/www.conf',
  ensure => present,
  mode => '644',
  owner => 'ftpmaster',
  group => 'ftpmaster',
 }

 file { '/etc/webalizer/ftp.conf':
  source => 'puppet:///modules/buaya/webalizer/ftp.conf',
  ensure => present,
  mode => '644',
  owner => 'ftpmaster',
  group => 'ftpmaster',
 }

 file { '/etc/webalizer/rsync.conf':
  source => 'puppet:///modules/buaya/webalizer/rsync.conf',
  ensure => present,
  mode => '644',
  owner => 'ftpmaster',
  group => 'ftpmaster',
 }

}

# vim:syntax=puppet:set ts=2 sw=2 et:
