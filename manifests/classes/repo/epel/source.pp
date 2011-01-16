# Class: yum::repo::epel::source
#
#
class yum::repo::epel::source {
	yum::managed_repo { "epel-source":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture - Source",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-source-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
    	gpgcheck       => 1,
        failovermethod => "priority",
		gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
    	priority       => 16
    }
}
