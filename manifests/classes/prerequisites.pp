# Class: yum::prerequisites
#
#
class yum::prerequisites {
	package { "yum-priorities":
		ensure => present
	} 

	# ensure there are no other repos
	file { "yum_repos_d":
		path    => '/etc/yum.repos.d/',
		source  => "puppet:///yum/empty",
		ensure  => directory,
		recurse => true,
		purge   => true,
		ignore  => '\.ignore',
		mode    => 0755,
		owner   => root,
		group   => root,
		require =>  Package["yum-priorities"]
	}
    
	#gpg key
	file {rpm_gpg: 
		path    => '/etc/pki/rpm-gpg/',
		source  => [ "puppet:///yum/${operatingsystem}.${lsbdistrelease}/rpm-gpg/", "puppet:///yum/CentOS.5/rpm-gpg/" ],
		recurse => true,
		purge   => true,
		owner   => root,
		group   => root,
		mode    => 600
	}
}
