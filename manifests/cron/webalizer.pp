class buaya::cron::webalizer {

  cron { 'create webalizer www':
   command => '/usr/bin/webalizer -c /etc/webalizer/www.conf',
   user => root,
   hour => 00,
   minute => 01
 }
  cron { 'create webalizer ftp':
   command => '/usr/bin/webalizer -c /etc/webalizer/ftp.conf',
   user => root,
   hour => 00,
   minute => 01
 }
  cron { 'create webalizer rsync':
   command => '/usr/local/bin/rsynclog-to-exfer.sh && /usr/bin/webalizer -c /etc/webalizer/rsync.conf',
   user => root,
   hour => 00,
   minute => 02
 }
}


# vim:syntax=puppet:set ts=2 sw=2 et:
