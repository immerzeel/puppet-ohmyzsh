class ohmyzsh::params {
	$path   = ''
	$source = 'git://git@github.com/robbyrussel/oh-my-zsh.git'
	$user   = ''

	case $::osfamily {
		'Ubuntu': {
			# On virtual machine with Ubuntu, default to 'vagrant'.
			if $::is_virtual {
				$user   = 'vagrant'
				$path   = '/home/vagrant'
			}
		}
		default: {
			fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
		}
	}
}
