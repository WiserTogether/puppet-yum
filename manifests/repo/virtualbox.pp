# Class: yum::repo::virtualbox
#
#
class yum::repo::virtualbox {
	yum::managed_repo { 'virtualbox':
		descr      => "virtualbox",
                baseurl    => 'http://download.virtualbox.org/virtualbox/rpm/el/$releasever/$basearch',
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-Virtualbox',
	}
}
