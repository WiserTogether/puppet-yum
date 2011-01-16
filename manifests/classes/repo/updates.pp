# Class: yum::repo::updates
#
#
class yum::repo::updates {
	yum::managed_repo { "updates":
        descr      => "CentOS-$lsbmajdistrelease - Updates",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=updates",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 1
    }
}
