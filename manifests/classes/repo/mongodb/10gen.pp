# Class: yum::repo::mongodb::10gen
#
#
class yum::repo::mongodb::10gen {
	yum::managed_repo { "10gen":
        descr    => "CentOS-${lsbmajdistrelease} - 10gen",
        baseurl  => "http://downloads.mongodb.org/distros/centos/5.4/os/${architecture}/",
        enabled  => 1,
        gpgcheck => 0,
        priority => 5
    }
}
