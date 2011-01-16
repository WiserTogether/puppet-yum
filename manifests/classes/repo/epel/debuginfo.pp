# Class: yum::repo::epel::debuginfo
#
#
class yum::repo::epel::debuginfo {
	yum::managed_repo { "epel-debuginfo":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture - Debug",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
    	gpgcheck       => 1,
        failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 16
    }
}
