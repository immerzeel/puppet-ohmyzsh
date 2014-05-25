class ohmyzsh::params {
	$source = 'git://github.com/robbyrussell/oh-my-zsh.git'
	$zsh    = '/usr/bin/zsh'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$group  = 'vagrant'
		$path   = '/home/vagrant'
		$user   = 'vagrant'
	}
}
