# Class: yum::repo::jpackage::generic
#
#
class yum::repo::jpackage::generic {
	yum::managed_repo { 'jpackage-generic':
		descr          => 'JPackage (free), generic',
		mirrorlist     => 'http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=6.0',
		failovermethod => 'priority',
		gpgcheck       => 1,
		gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-jpackage",
		enabled        => 1,
	}
}
