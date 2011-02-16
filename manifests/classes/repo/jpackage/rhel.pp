# Class: yum::repo::jpackage::rhel
#
#
class yum::repo::jpackage::rhel {
	yum::managed_repo { "jpackage-rhel":
		descr          => "JPackage (free) for Red Hat Enterprise Linux ${lsbmajdistrelease}",
		mirrorlist     => "http://www.jpackage.org/jpackage_rhel-${lsbmajdistrelease}_1.7.txt",
		failovermethod => "priority",
		gpgcheck       => 1,
		gpgkey         => "http://www.jpackage.org/jpackage.asc",
		enabled        => 1
	}
}
