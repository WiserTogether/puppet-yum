# Class: yum::repo::kbs::extras
#
#
class yum::repo::kbs::extras {
	yum::managed_repo { 'kbs-CentOS-Extras':
		descr    => "CentOS.Karan.Org-EL${lsbmajdistrelease} - Stable",
		baseurl  => "http://centos.karan.org/el${lsbmajdistrelease}/extras/stable/${architecture}/RPMS/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh',
	}
}
