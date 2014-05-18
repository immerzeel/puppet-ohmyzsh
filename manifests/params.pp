class ohmyzsh::params {
	$source = 'git://github.com/robbyrussell/oh-my-zsh.git'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$user   = 'vagrant'
		$path   = '/home/vagrant'
	}
}
