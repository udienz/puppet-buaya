class buaya::cron::webalizer {

  cron { 'create webalizer www':
   command => '/usr/bin/webalizer -c /home/ftpmaster/etc/webalizer-www.conf',
   user => root,
   hour => 00,
   minute => 01
 }
  cron { 'create webalizer ftp':
   command => '/usr/bin/webalizer -c /home/ftpmaster/etc/webalizer-ftp.conf',
   user => root,
   hour => 00,
   minute => 01
 }
}


# vim:syntax=puppet:set ts=2 sw=2 et:
