# Class: yum::repo::kbs::ruby187
#
#
class yum::repo::kbs::ruby187 {
	yum::managed_repo { 'kbs-CentOS-ruby187':
		descr    => "CentOS.Karan.Org-EL${lsbmajdistrelease} - Stable",
		baseurl  => "http://centos.karan.org/el${lsbmajdistrelease}/ruby187/${architecture}/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh',
	}
}
