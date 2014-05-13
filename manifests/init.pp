# == Class: ohmyzsh
#
# Install Oh My Zsh and set it the default shell for the user.
#
# === Parameters
##
# [*path*]
# The absolute path to clone the repository to. e.g. "/home/vagrant". No
# trailing slashes.
#
# [*source*]
# The remote repository to clone. Prefer SSH connection over HTTP.
#
# [*user*]
# The user to install the shell for.
#
# === Variables
#
# === Examples
#
#  class { ohmyzsh:
#    user => 'vagrant',
#    path => '/home/vagrant',
#    source => 'git://git@github.com/russell/oh-my-zsh.git'
#
#  }
#
# === Authors
#
# Pascal Immerzeel <pascal@immerzeel.net>
#
# === Copyright
#
# Copyright 2014 Pascal Immerzeel, unless otherwise noted.
#
class ohmyzsh (
	$path   = $ohmyzsh::params::path,
	$source = $ohmyzsh::params::source,
	$user   = $ohmyzsh::params::user
) inherits ohmyzsh::params {
	validate_string($user, $path, $source)

	package {'zsh':
		ensure => installed
	}

	vcsrepo {"${path}/.oh-my-zsh":
		ensure   => present,
		provider => git,
		source   => $source
	}

	user {$user:
		shell => "bin/zsh"
	}
}
