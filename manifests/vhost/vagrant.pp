class buaya::vhost::vagrant {

 file { '/ftp/.dm03/vagrant.klas.or.id':
	ensure => 'directory', 
    }

 apache::vhost { 'vagrant.klas.or.id':
  serveraliases => [
   'vagrant-cloud.klas.or.id',
   'vagrant-box.klas.or.id',
  ],
  port                    => '80',
  docroot                 => '/ftp/.dm03/vagrant.klas.or.id',
  add_default_charset	 => 'text/plain',
  directories             => [
   { 'path'               => '/ftp/.dm03/vagrant.klas.or.id',
     'options'            => ['Indexes', 'SymLinksIfOwnerMatch', 'Multiviews'],
     'index_options'      => ['IgnoreCase', 'FancyIndexing', 'FoldersFirst' ],
     'allow_override'     => [ 'FileInfo', 'Indexes' ],    
   },
  ],
 } # end of vhost

}

# vim:syntax=puppet:set ts=2 sw=2 et:
