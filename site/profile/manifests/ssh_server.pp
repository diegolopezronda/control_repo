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
		key    => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7c9sdNhKngyCp4X4y8G59oE3xZVSucRYydOw6yZGspcYcVKu7aFtXcyAviFPx6Z2l0r+S+87a64gqIAQodRgRTKD7XnC1+ztaBHEi9ibWb/YNt2W9DzJyFk9vojknJy93oyELcmYZesLxOZgykjvpNzeiJFVe9g7NPWx4PpJR6IhnimwTMqxuPISvJzRbcVV2ciuZrFhrBfywj/Pg4BJk2Nsw21sRwmnVRepX7CKok78z1k2hGydcoTsHNT+xI+6Hc783ebu6JUWlu48wBO6VDUzsiJe7zflHdjgisr+jO1jrD482ZVy6TeUPUkObBgGz+j3KIK3d6NpjDeqAcBub root@master.puppet.vm"
	}  
}
