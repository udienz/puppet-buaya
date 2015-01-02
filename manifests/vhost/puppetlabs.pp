class buaya::vhost::puppetlabs {

 apache::vhost { 'apt.puppetlabs.klas.or.id':
  port                    => '80',
  docroot                 => '/srv/ftp/.dm03/apt.puppetlabs.com',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/ftp/.dm03/apt.puppetlabs.com',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],

 } # end of vhost

 apache::vhost { 'yum.puppetlabs.klas.or.id':
  port                    => '80',
  docroot                 => '/srv/ftp/.dm03/yum.puppetlabs.com',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/srv/ftp/.dm03/yum.puppetlabs.com',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],

 } # end of vhost


}

# vim:syntax=puppet:set ts=2 sw=2 et:
