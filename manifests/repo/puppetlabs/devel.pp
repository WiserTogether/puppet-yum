class yum::repo::puppetlabs::devel {
	yum::managed_repo { 'puppetlabs-devel':
		descr    => 'Puppetlabs packages - devel',
		baseurl  => 'http://yum.puppetlabs.com/el/$releasever/devel/$basearch/',
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
	}
}
