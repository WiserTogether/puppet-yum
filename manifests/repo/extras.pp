# Class: yum::repo::extras
#
#
class yum::repo::extras {
	yum::managed_repo { "extras":
        descr      => "CentOS-$lsbmajdistrelease - Extras",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=extras",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5"
    }
}
