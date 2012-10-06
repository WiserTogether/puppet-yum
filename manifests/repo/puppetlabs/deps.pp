class yum::repo::puppetlabs::deps {
	yum::managed_repo { 'puppetlabs-deps':
		descr    => 'Puppetlabs packages - deps',
		baseurl  => 'http://yum.puppetlabs.com/el/$releasever/dependencies/$basearch/',
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
	}
}
