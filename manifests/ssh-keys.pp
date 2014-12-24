class buaya::ssh-keys {

	ssh_authorized_key { 'archvsync@syowa':
		name    => 'sshkey-ubuntu-releases',
		user    => 'ftpmaster',
		type    => 'rsa',
		key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA7l6nWM6Z2KfR4KmwF29Fv9nAgTLwHM5H/TWhinl7DZDG+Jn+TC9kll3cuyGByhwh/mNTwbyvsyiDSXFtbglowQoPSW4rhOEVy6s+/lDjDBGTDsgk8wyBqlNJRlppODsl+kqX0IqAIc3XJ9luDl894tD5rxhiXzqXL3c8r8CuhPkGdUCCMbWU4OUAIjIAs8DClYzjrAZ54IVbk5gTjDYUtlSLNXjm1rZ788h65waKBn4/LV+8nEaFIPA9FxPZI6VLmKGO/RQqZrLPNKOzotmkofV1jV2OmQNHzIwu2seV6HGYqZc3U9jE2+Eat86C6IMYS7KPxVoQd6AnHjRMlhyb6Q==',
		options =>  [ 'no-port-forwarding', 'no-X11-forwarding', 'no-agent-forwarding', 'no-pty', 'command="/home/ftpmaster/bin/sedot-bg ubuntu-cd"', 'from="91.189.92.173"', ] 
	}
	ssh_authorized_key { 'archvsync@syowa1':
		name    => 'ssh-key-ubuntu-archive',
		user    => 'ftpmaster',
		type    => 'rsa',
		key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAt8xHRbCVFT3Uw/B+TavIlDYRoLMxOKlN3HnBeniFUJTto5Im52FbT3ODfMszz5/BIAnXBf1baWDljHErx4huohh9MxyovZ0h8GYCmMy7dZzsrV5eYhLXd2idCOKIl6gr0BTgTlJOKOgVEoZ2YtiU9MnNzRk3gkBeCMDJrnQOCC8Sko0F0RUJnrzLXOdtvDfNu7Ff+tRNb4PwrU3inbm2YJRnOoZI9vIsv/9DwsMm9d+YIIOz/7y5jLGhZ34nXzhmI6cJO92+Ve5ubhbbpKUFQAh2L1PP6A+I7jHvoWHToSaZlt+DCN4Kg+JlZuf2FXk8MeHkEc6qWWHQTFF8/ArKew==',
		options => [ 'no-port-forwarding', 'no-X11-forwarding', 'no-agent-forwarding', 'no-pty', 'command="/home/ftpmaster/bin/sedot-bg ubuntu"', 'from="91.189.92.172"', ]
	}
}


# vim:syntax=puppet:set ts=2 sw=2 et:
