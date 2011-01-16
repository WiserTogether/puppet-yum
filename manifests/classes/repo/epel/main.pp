# Class: yum::repo::epel::main
#
#
class yum::repo::epel::main {
	yum::managed_repo { "epel":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
		gpgcheck       => 1,
        failovermethod => "priority",
    	gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
	    priority       => 16
    }
}
