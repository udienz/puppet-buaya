class buaya::cron::suro {

  cron { 'make-report':
   environment => 'SEDOT_BASE=/home/ftpmaster/status',
   command => '$SEDOT_BASE/bin/make-report > /dev/null 2>&1',
   user => 'ftpmaster',
   hour => 'absent',
   minute => '*/15'
 }
  cron { 'collect mirror size':
   command => '$SEDOT_BASE/bin/collect-mirror-size > /dev/null 2>&1',
   environment => 'SEDOT_BASE=/home/ftpmaster/status',
   user => 'ftpmaster',
   hour => '3',
   minute => '0'
 }
#  cron { 'collect disk usage':
#   command => '$SEDOT_BASE/bin/collect-du > /dev/null 2>&1',
#   user => 'ftpmaster',
#   hour => 'absent',
#   minute => '*/15'
# }
  cron { 'plot mirror size':
   command => '$SEDOT_BASE/bin/plot-mirror-size > /dev/null 2>&1',
   environment => 'SEDOT_BASE=/home/ftpmaster/status',
   user => 'ftpmaster',
   hour => '5',
   minute => '0'
 }
  cron { 'update ls-lRh':
   command => '$SEDOT_BASE/bin/update-ls-lRh > /dev/null 2>&1',
   environment => 'SEDOT_BASE=/home/ftpmaster/status',
   user => 'ftpmaster',
   hour => 'absent',
   minute => '*/15'
 }
  cron { 'cleaning up lock files':
   command => '$SEDOT_BASE/bin/cleanup > /dev/null 2>&1',
   environment => 'SEDOT_BASE=/home/ftpmaster/status',
   user => 'ftpmaster',
   special => 'reboot'
 }


} # end of cronjob

# vim:syntax=puppet:set ts=2 sw=2 et:
