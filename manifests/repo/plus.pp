# Class: yum::repo::plus
#
#
class yum::repo::plus {
	yum::managed_repo { 'centos5-plus':
		descr      => "CentOS-${lsbmajdistrelease} - Plus",
		mirrorlist => "http://mirrorlist.centos.org/?release=${lsbmajdistrelease}&arch=${architecture}&repo=centosplus",
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${lsbmajdistrelease}"
	}
}
