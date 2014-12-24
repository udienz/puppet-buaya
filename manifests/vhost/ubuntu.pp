class buaya::vhost::ubuntu {

 file { '/srv/archive.ubuntu.com':
	ensure => 'directory', }
 file { '/srv/archive.ubuntu.com/ubuntu': 
 	ensure => 'link',
	target => '/srv/ftp/ubuntu', }
 file { [ '/srv/archive.ubuntu.com/ubuntu-cd', '/srv/archive.ubuntu.com/ubuntu-releases' ]: 
 	ensure => 'link',
 	target => '/srv/ftp/iso/ubuntu/releases/', }


 apache::vhost { 'id.archive.ubuntu.com':
  serveraliases => [
   'us.archive.ubuntu.com',
   'uk.archive.ubuntu.com',
   'sg.archive.ubuntu.com',
   'archive.ubuntu.com',
  ],
  port                    => '80',
  docroot                 => '/srv/archive.ubuntu.com',
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
