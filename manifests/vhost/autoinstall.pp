class buaya::vhost::autoinstall {

 file { '/srv/auto-install.klas.or.id':
	ensure => 'directory',
    source => 'puppet:///modules/buaya/autoinstall/',
    recurse => 'true',
	owner => 'ftpmaster', 
    }

 apache::vhost { 'auto-install.klas.or.id':
  port                    => '80',
  docroot                 => '/srv/auto-install.klas.or.id',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/auto-install.klas.or.id',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],
 } # end of vhost

}

# vim:syntax=puppet:set ts=2 sw=2 et:
