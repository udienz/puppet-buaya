class buaya::dir {

#include '::apache::mod::dir'

apache::mod { 'dir': }

class { '::apache::mod::dir':
 indexes => [ 'index.html', 'index.cgi', 'index.pl', 'index.php', ]
}


}

# vim:syntax=puppet:set ts=2 sw=2 et:
