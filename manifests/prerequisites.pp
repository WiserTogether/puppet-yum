# Class: yum::prerequisites
#
#
class yum::prerequisites {
	#package { 'yum-priorities':
	#	ensure => present,
	#} 

	# ensure there are no other repos
	file { '/etc/yum.repos.d/':
		ensure  => directory,
		source  => 'puppet:///modules/common/empty',
		owner   => 'root',
		group   => 'root',
		mode    => '0755',
		recurse => true,
		purge   => true,
		ignore  => '\.ignore',
	#	require => Package['yum-priorities'],
	}
    
	#gpg key
	file { '/etc/pki/rpm-gpg/': 
		source  => [ "puppet:///modules/yum/${operatingsystem}-${lsbdistrelease}/rpm-gpg/",
			     "puppet:///modules/yum/${operatingsystem}-${lsbmajdistrelease}/rpm-gpg/",
			     "puppet:///modules/yum/${operatingsystem}/rpm-gpg/" ],
		owner   => 'root',
		group   => 'root',
		mode    => '0600',
		recurse => true,
		purge   => true,
	}
}
