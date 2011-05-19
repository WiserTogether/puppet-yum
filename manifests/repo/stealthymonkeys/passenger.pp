# Class: yum::repo::stealthymonkeys::passenger
#
#
class yum::repo::stealthymonkeys::passenger {
	yum::managed_repo { 'passenger':
		descr          => "Red Hat Enterprise ${lsbmajdistrelease} - Phusion Passenger",
		mirrorlist     => 'http://passenger.stealthymonkeys.com/rhel/mirrors',
		baseurl        => "http://passenger.stealthymonkeys.com/rhel/${lsbmajdistrelease}/${architecture}",
		enabled        => 1,
		gpgcheck       => 0,
		failovermethod => 'priority',
		gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-passenger.rhel5',
	}
}
