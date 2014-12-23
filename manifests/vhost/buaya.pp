class buaya::apache::buaya {
 apache::vhost { 'buaya.klas.or.id':
  serveraliases => [
   'buaya.surabaya.linux.or.id',
   'buaya.sby.rad.net.id',
  ],
  port                    => '80',
  docroot                 => '/srv/ftp',
  directories             => [
   { 'path'               => '/srv/ftp',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],

  aliases => [
   { alias               => '/status/',
     path                => '/home/ftpmaster/status/data/report',
   },
   { alias               => '/status/log/',
     path                => '/home/ftpmaster/status/log/sync',
   },
  ],

 custom_fragment => '
   <Directory /home/ftpmaster/status/data/report>
     AddType text/plain gz
     AddEncoding x-gzip gz
   </Directory>
   <Directory /home/ftpmaster/status/log/sync>
     AddType text/plain gz
     AddEncoding x-gzip gz
   </Directory>
',

 } # end of vhost
}

# vim:syntax=puppet:set ts=2 sw=2 et:
