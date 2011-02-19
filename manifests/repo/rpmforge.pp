# Class: yum::repo::rpmforge
#
#
class yum::repo::rpmforge {
	yum::managed_repo { "rpmforge-rhel5":
        descr      => "RPMForge RHEL5 packages",
		baseurl    => "http://apt.sw.be/redhat/el${lsbmajdistrelease}/en/${architecture}/rpmforge",
		mirrorlist => "http://apt.sw.be/redhat/el${lsbmajdistrelease}/en/mirrors-rpmforge",
	    enabled    => 1,
		gpgcheck   => 1,
    	gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag"
	}
}
