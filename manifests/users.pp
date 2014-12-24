class buaya::users {

	user { 'ftpmaster': 
	  ensure         => 'present',
	  comment        => 'FTP Master at Buaya',
#	  purge_ssh_keys => 'true',
	  shell          => '/bin/bash',
	  uid            => '1001',
	}

}


# vim:syntax=puppet:set ts=2 sw=2 et:
