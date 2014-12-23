class buaya::apache {

class { 'apache':
# default_mods  => false,
# default_confd_files => true,
 docroot => '/var/www/html',
 logroot => '/var/log/apache2',
 manage_group => 'www-data',
 manage_user => 'www-data',
 package_ensure => 'present',
 serveradmin => 'hostmaster@sby.rad.net.id',
 server_signature => 'On',
 service_ensure => 'running',
 }


} # end of buaya::apache::base
