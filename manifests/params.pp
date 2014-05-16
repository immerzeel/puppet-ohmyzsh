class ohmyzsh::params {
	$source = 'git://git@github.com/robbyrussel/oh-my-zsh.git'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$user   = 'vagrant'
		$path   = '/home/vagrant'
	}
}
