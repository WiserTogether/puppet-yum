# Class: yum::repo::opsview
#
#
class yum::repo::opsview {
	yum::managed_repo { 'opsview':
		descr      => 'Opsview',
		baseurl  => "http://downloads.opsera.com/opsview-community/latest/yum/${operatingsystem}/${lsbmajdistrelease}/${architecture}",
		enabled    => 1,
		gpgcheck   => 0,
	}
}
