# Class: yum::repo::kbs::misc
#
#
class yum::repo::kbs::misc {
	yum::managed_repo { "kbs-CentOS-Misc":
	    descr    => "CentOS.Karan.Org-EL$lsbmajdistrelease - Stable",
        baseurl  => "http://centos.karan.org/el$lsbmajdistrelease/misc/stable/$architecture/RPMS/",
	    enabled  => 1,
		gpgcheck => 1,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh",
	    priority => 20
    }
}
