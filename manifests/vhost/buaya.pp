class buaya::vhost::buaya {

 file { '/ftp/CentOS':
    ensure => 'link',
    target => 'centos',
 }

 apache::vhost { 'buaya.klas.or.id':
  serveraliases => [
   'buaya.surabaya.linux.or.id',
   'buaya.sby.rad.net.id',
   'crocodile.klas.or.id',
  ],
  port                    => '80',
  docroot                 => '/srv/ftp',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/ftp',
     'options'            => ['Indexes', 'FollowSymLinks', 'Multiviews'],
     'directoryindex'	  =>  'index.html index.cgi index.pl index.php',
     #'directoryindex'	  => ['index.html', 'index.cgi', 'index.pl', 'index.php' ],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'All' ],    
     #'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
    { 'path'               => '/home/ftpmaster/status/data/report',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'directoryindex'	  =>  'index.html index.cgi index.pl index.php',
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  { 'path'               => '/home/ftpmaster/status/log/sync',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'directoryindex'	  =>  'index.html index.cgi index.pl index.php',
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
],

  aliases => [
   { alias               => '/status',
     path                => '/home/ftpmaster/status/data/report',
   },
   { alias               => '/status/log',
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
 #include buaya::vhost::debian
 #include buaya::vhost::ubuntu
}

# vim:syntax=puppet:set ts=2 sw=2 et:
