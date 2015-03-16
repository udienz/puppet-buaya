class buaya::vhost::ubuntu {

 file { '/srv/archive.ubuntu.com':
	ensure => 'directory', 
	owner => 'ftpmaster', }
 file { '/srv/archive.ubuntu.com/ubuntu': 
 	ensure => 'link',
	owner => 'ftpmaster', 
	target => '/srv/ftp/ubuntu', }
 file { [ '/srv/archive.ubuntu.com/ubuntu-cd', '/srv/archive.ubuntu.com/ubuntu-releases' ]: 
 	ensure => 'link',
	owner => 'ftpmaster', 
 	target => '/srv/ftp/iso/ubuntu/releases/', }


 apache::vhost { 'id.archive.ubuntu.com':
  serveraliases => [
   'us.archive.ubuntu.com',
   'uk.archive.ubuntu.com',
   'sg.archive.ubuntu.com',
   'archive.ubuntu.com',
   'ubuntu.klas.or.id',
  ],
  port                    => '80',
  docroot                 => '/srv/archive.ubuntu.com',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/archive.ubuntu.com',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],

 } # end of vhost
}

# vim:syntax=puppet:set ts=2 sw=2 et:
