# Class: yum::repo::epel::testing::main
#
#
class yum::repo::epel::testing::main {
	yum::managed_repo { "epel-testing":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - Testing - $architecture",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-epel5&arch=$architecture",
	    enabled        => 1,
    	gpgcheck       => 1,
        failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 17
    }
}
