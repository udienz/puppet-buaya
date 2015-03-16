class buaya::www {

class { 'apache':
# default_mods  => false,
# default_confd_files => true,
 docroot => '/ftp/',
# default_vhost => false,
 logroot => '/var/log/apache2',
 package_ensure => 'present',
 serveradmin => 'hostmaster@sby.rad.net.id',
 server_signature => 'On',
 service_ensure => 'running',
 server_tokens => 'Full',
 keepalive => 'On',
 }


include buaya::vhost::buaya
include buaya::vhost::ubuntu
include buaya::vhost::debian
include buaya::vhost::autoinstall
include buaya::vhost::puppetlabs
include buaya::vhost::vagrant
include buaya::content::self

include apache


} # end of buaya::apache::base
# vim:syntax=puppet:set ts=2 sw=2 et:
