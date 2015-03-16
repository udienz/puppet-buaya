class buaya::ftp {

class { 'vsftpd':
  anonymous_enable  => 'YES',
  write_enable      => 'NO',
  local_enable	    => 'NO',
  ftpd_banner       => 'BUAYA FTP Server',
  chroot_local_user => 'YES',
  listen	    => 'YES',
  tcp_wrappers	    => 'YES',
  xferlog_enable    => 'YES',
  xferlog_file      => '/var/log/xferlog',
  directives => {
   'anon_root' => '/srv/ftp/',
  },
 }



include vsftpd

} # end of buaya::apache::base
# vim:syntax=puppet:set ts=2 sw=2 et:
