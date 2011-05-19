# Class: yum::repo::epel::testing::debuginfo
#
#
class yum::repo::epel::testing::debuginfo {
	yum::managed_repo { 'epel-testing-debuginfo':
		descr          => "Extra Packages for Enterprise Linux ${lsbmajdistrelease} - Testing - ${architecture} - Debug",
		mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-debug-epel5&arch=${architecture}",
		enabled        => 1,
		gpgcheck       => 1,
		failovermethod => 'priority',
		gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL',
	}
}
