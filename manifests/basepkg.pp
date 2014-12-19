class buaya::basepkg {
 package { [
  'webalizer',
  'rrdtool'
  ]:
 ensure => installed,
}
