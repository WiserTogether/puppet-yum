# Class: yum::repo::foreman::stable
#
#
class yum::repo::foreman::stable {
	yum::managed_repo { 'foreman':
		descr    => 'Foreman Repo - Stable',
		baseurl  => 'http://yum.theforeman.org/stable',
		gpgcheck => 0,
		enabled  => 1,
	}
}
