class buaya::vhost::debian {

 file { '/srv/ftp.debian.org':
	ensure => 'directory', 
	owner => 'ftpmaster', }
 file { '/srv/ftp.debian.org/debian':
 	ensure => 'link',
	target => '/srv/ftp/debian', 
	owner => 'ftpmaster', }
 file { '/srv/ftp.debian.org/debian-cd': 
 	ensure => 'link',
 	target => '/srv/ftp/iso/debian/', 
	owner => 'ftpmaster', }
 file { '/srv/ftp.debian.org/debian-security':
 	ensure => 'link',
	target => '/srv/ftp/debian-security', 
	owner => 'ftpmaster', }

 apache::vhost { 'ftp.debian.org':
  serveraliases => [
   'ftp.id.debian.org',
   'ftp.sg.debian.org',
   'ftp.us.debian.org',
   'debian.klas.or.id',
  ],
  port                    => '80',
  docroot                 => '/srv/ftp.debian.org',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/ftp.debian.org',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],
 } # end of vhost

 apache::vhost { 'debian-security.klas.or.id':
  port                    => '80',
  docroot                 => '/srv/ftp.debian.org/debian-security',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/ftp.debian.org/debian-security',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],
 } # end of vhost

}

# vim:syntax=puppet:set ts=2 sw=2 et:
