# Class: yum::repo::varnish
#
#
class yum::repo::varnish {
	yum::managed_repo { 'varnish':
		descr    => "Varnish 2.1 for Enterprise Linux 5 - ${architecture}",
		baseurl  => "http://repo.varnish-cache.org/redhat/varnish-2.1/el5/${architecture}",
		enabled  => 1,
		gpgcheck => 0
	}
}
