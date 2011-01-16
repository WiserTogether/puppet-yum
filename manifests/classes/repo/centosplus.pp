# Class: yum::repo::centosplus
#
#
class yum::repo::centosplus {
	yum::managed_repo { "centosplus":
        descr      => "CentOS-$lsbmajdistrelease - Centosplus",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=centosplus",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 2
    }
}
