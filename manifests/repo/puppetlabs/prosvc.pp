# Class: yum::repo::puppetlabs::prosvc
#
#
class yum::repo::puppetlabs::prosvc {
	yum::managed_repo { 'puppetlabs-prosvc':
		descr    => 'Puppetlabs packages - prosvc',
		baseurl  => "http://yum.puppetlabs.com/prosvc/${lsbmajdistrelease}/${architecture}/",
		enabled  => 1,
		gpgcheck => 0,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
	}
}
