class buaya::apache::debian {

 file { '/srv/ftp.debian.org':
	ensure => 'directory', }
 file { '/srv/ftp.debian.org/debian':
 	ensure => 'link',
	target => '/srv/ftp/debian', }
 file { '/srv/ftp.debian.org/debian-cd': 
 	ensure => 'link',
 	target => '/srv/ftp/iso/debian/', }
 file { '/srv/ftp.debian.org/debian-security':
 	ensure => 'link',
	target => '/srv/ftp/debian-security', }

 apache::vhost { 'ftp.debian.org':
  serveraliases => [
   'ftp.id.debian.org',
   'ftp.sg.debian.org',
   'ftp.us.debian.org',
  ],
  port                    => '80',
  docroot                 => '/srv/ftp.debian.org',
  directories             => [
   { 'path'               => '/srv/ftp.debian.org',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],

 } # end of vhost
}

# vim:syntax=puppet:set ts=2 sw=2 et:
