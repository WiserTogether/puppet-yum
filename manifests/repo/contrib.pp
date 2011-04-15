# Class: yum::repo::contrib
#
#
class yum::repo::contrib {
	yum::managed_repo { 'contrib':
		descr      => "CentOS-${lsbmajdistrelease} - Contrib",
		mirrorlist => "http://mirrorlist.centos.org/?release=${lsbmajdistrelease}&arch=${architecture}&repo=contrib",
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5'
	}
}
