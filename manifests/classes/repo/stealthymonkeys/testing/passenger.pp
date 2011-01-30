# Class: yum::repo::stealthymonkeys::testing::passenger
#
#
class yum::repo::stealthymonkeys::testing::passenger {
	yum::managed_repo { "passenger-testing":
	    descr          => "Red Hat Enterprise ${lsbmajdistrelease} - Phusion Passenger - Testing",
		baseurl        => "http://passenger.stealthymonkeys.com/rhel/${lsbmajdistrelease}/${architecture}/testing/",
	    enabled        => 1,
		gpgcheck       => 0,
        failovermethod => "priority",
    	gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-passenger.rhel5",
	    priority       => 20
    }
}