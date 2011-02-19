# Class: yum::repo::epel::testing::source
#
#
class yum::repo::epel::testing::source {
	yum::managed_repo { "epel-testing-source":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - Testing - $architecture - Source",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-source-epel5&arch=$architecture",
    	enabled        => 1,
		gpgcheck       => 1,
		failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL"
    }
}
