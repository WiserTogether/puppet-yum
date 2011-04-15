# Class: yum::repo::kbs::misc::testing
#
#
class yum::repo::kbs::misc::testing {
	yum::managed_repo { 'kbs-CentOS-Misc-Testing':
		descr    => "CentOS.Karan.Org-EL${lsbmajdistrelease} - Testing",
		baseurl  => "http://centos.karan.org/el${lsbmajdistrelease}/misc/testing/${architecture}/RPMS/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh'
	}
}
