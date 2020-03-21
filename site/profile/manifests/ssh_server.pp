class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDiRHoghWKtXo+7AIOwOjGjCK3A6XyqmozP1SwhBI53+HPHaDgAQyLyaASP0gnqXOgz2yIfrA/2L2VHjDU+Z/plQTCduJlpGk6VlUEgCF8b4Z+0V0lKEteuPtXMgm4w3Ir5e7JfSRPmqPeBWMp8to8EcxPNavDKqM6rWO7S4SDsgMB8masowfGHZWgn4Zr6b29nMBfG8GgQgr1jxQYicxKWCJOis+Fr3ZPEPHtlUOeNvLsBUSSxBw7CPA/m6yEBz/WHcZFqC40H3pM3ORkHz3/E0BuEzj+wZQ9XbgE3XIdjo8SkdvdmQp209gaWyvvehdEnubEhOgXY+kPAdoabihC1',
	}  
}
