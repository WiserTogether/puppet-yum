# Class: yum::repo::addons
#
#
class yum::repo::jenkins {
	yum::managed_repo { 'jenkins':
		descr      => "Jenkins",
                baseurl    => "http://pkg.jenkins-ci.org/redhat-stable-rc/",
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-Jenkins',
	}
}
