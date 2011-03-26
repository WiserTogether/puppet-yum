# Class: yum::repo::foreman::testing
#
#
class yum::repo::foreman::testing {
	yum::managed_repo { "foreman-testing":
        descr    => "Foreman Repo - Testing",
        baseurl  => "http://yum.theforeman.org/test",
		gpgcheck => 0,
		enabled  => 1
    }
}
