# Class: yum::repo::addons
#
#
class yum::repo::addons {
	yum::managed_repo { 'addons':
		descr      => "CentOS-${lsbmajdistrelease} - Addons",
		mirrorlist => "http://mirrorlist.centos.org/?release=${lsbmajdistrelease}&arch=${architecture}&repo=addons",
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5'
	}
}
