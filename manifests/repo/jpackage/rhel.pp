# Class: yum::repo::jpackage::rhel
#
#
class yum::repo::jpackage::rhel {
	yum::managed_repo { 'jpackage-rhel':
		descr          => "JPackage (free) for Red Hat Enterprise Linux ${lsbmajdistrelease}",
		mirrorlist     => "http://www.jpackage.org/mirrorlist.php?dist=redhat-el-5.0&type=free&release=6.0",
		failovermethod => 'priority',
		gpgcheck       => 1,
		gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-jpackage',
		enabled        => 1,
	}
}
