# Class: yum::repo::jpackage::generic
#
#
class yum::repo::jpackage::generic {
	yum::managed_repo { 'jpackage-generic':
		descr          => 'JPackage (free), generic',
		mirrorlist     => 'http://www.jpackage.org/jpackage_generic_1.7.txt',
		failovermethod => 'priority',
		gpgcheck       => 1,
		gpgkey         => 'http://www.jpackage.org/jpackage.asc',
		enabled        => 1
	}
}
