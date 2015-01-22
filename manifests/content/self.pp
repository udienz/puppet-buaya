class buaya::content::self {

 file { '/srv/ftp/.self/':
 ensure => 'directory',
 owner => 'ftpmaster',
 group => 'ftpmaster',
 mode => '755',
 }
}
# vim:syntax=puppet:set ts=2 sw=2 et:
