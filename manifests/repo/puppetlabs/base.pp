# Class: yum::repo::puppetlabs::base
#
#
class yum::repo::puppetlabs::base {
	yum::managed_repo { 'puppetlabs-base':
		descr    => 'Puppetlabs packages - base',
		baseurl  => 'http://yum.puppetlabs.com/el/$releasever/products/$basearch/',
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
	}
}
