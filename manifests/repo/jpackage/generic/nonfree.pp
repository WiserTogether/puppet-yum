# Class: yum::repo::jpackage::generic::nonfree
#
#
class yum::repo::jpackage::generic::nonfree {
	yum::managed_repo { 'jpackage-generic-nonfree':
		descr          => 'JPackage (non-free), generic',
		mirrorlist     => 'http://www.jpackage.org/jpackage_generic_nonfree_1.7.txt',
		failovermethod => 'priority',
		gpgcheck       => 1,
		gpgkey         => 'http://www.jpackage.org/jpackage.asc',
		enabled        => 1
	}
}
