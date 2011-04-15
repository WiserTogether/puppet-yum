# Class: yum::repo::kbs::extras::testing
#
#
class yum::repo::kbs::extras::testing {
	yum::managed_repo { 'kbs-CentOS-Extras-Testing':
		descr    => "CentOS.Karan.Org-EL${lsbmajdistrelease} - Testing",
		baseurl  => "http://centos.karan.org/el${lsbmajdistrelease}/extras/testing/${architecture}/RPMS/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh'
	}
}
