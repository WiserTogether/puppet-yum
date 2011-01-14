# Class: yum::centos::five
#
#
class yum::centos::five {
	yum::managed_repo { "base":
        descr      => "CentOS-${lsbmajdistrelease} - Base",
        mirrorlist => "http://mirrorlist.centos.org/?release=${lsbmajdistrelease}&arch=${architecture}&repo=os",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 1
    }

    yum::managed_repo { "updates":
        descr      => "CentOS-$lsbmajdistrelease - Updates",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=updates",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 1
    }

    yum::managed_repo { "addons":
        descr      => "CentOS-$lsbmajdistrelease - Addons",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=addons",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 1
    }

    yum::managed_repo { "extras":
        descr      => "CentOS-$lsbmajdistrelease - Extras",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=extras",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 1
    }

    yum::managed_repo { "centosplus":
        descr      => "CentOS-$lsbmajdistrelease - Centosplus",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=centosplus",
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 2
    }

    yum::managed_repo { "rubyworks":
        descr    => "Rubyworks for better Ruby stuff",
        baseurl  => "http://rubyworks.rubyforge.org/redhat/$lsbmajdistrelease/RPMS/$architecture",
        enabled  => 0,
        gpgcheck => 1,
        gpgkey   => "file:///etc/pki/rpm-gpg/RubyWorks.GPG.key", 
        priority => 1
    }

    yum::managed_repo { "contrib":
        descr      => "CentOS-$lsbmajdistrelease - Contrib",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=contrib",
        gpgcheck   => 1,
        gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
        priority   => 10
    }

    yum::managed_repo { "rpmforge-rhel5":
        descr    => "RPMForge RHEL5 packages",
        baseurl  => "http://wftp.tu-chemnitz.de/pub/linux/dag/redhat/el$lsbmajdistrelease/en/$architecture/dag",
	    enabled  => 1,
		gpgcheck => 1,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag",
	    priority => 30
	}
	
	yum::managed_repo { "centos5-atrpms":
	    descr    => "CentOS $lsbmajdistrelease - $architecture - ATrpms",
        baseurl  => "http://dl.atrpms.net/el$lsbmajdistrelease-$architecture/atrpms/stable",
	    enabled  => 1,
		gpgcheck => 0,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY.atrpms",
	    priority => 30
    }

	yum::managed_repo { "centos5-plus":
	    descr      => "CentOS-$lsbmajdistrelease - Plus",
        mirrorlist => "http://mirrorlist.centos.org/?release=$lsbmajdistrelease&arch=$architecture&repo=centosplus",
	    enabled    => 1,
    	gpgcheck   => 1,
	    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-$lsbmajdistrelease",
		priority   => 15
	}
	
    yum::managed_repo { "epel":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
		gpgcheck       => 1,
        failovermethod => "priority",
    	gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
	    priority       => 16
    }

	yum::managed_repo { "epel-debuginfo":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture - Debug",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
    	gpgcheck       => 1,
        failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 16
    }

    yum::managed_repo { "epel-source":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - $architecture - Source",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-source-$lsbmajdistrelease&arch=$architecture",
	    enabled        => 1,
    	gpgcheck       => 1,
        failovermethod => "priority",
		gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
    	priority       => 16
    }

	yum::managed_repo { "epel-testing":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - Testing - $architecture",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-epel5&arch=$architecture",
	    enabled        => 0,
    	gpgcheck       => 1,
        failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 17
    }

    yum::managed_repo { "epel-testing-debuginfo":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - Testing - $architecture - Debug",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-debug-epel5&arch=$architecture",
	    enabled        => 0,
    	gpgcheck       => 1,
        failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 17
    }

	yum::managed_repo { "epel-testing-source":
	    descr          => "Extra Packages for Enterprise Linux $lsbmajdistrelease - Testing - $architecture - Source",
        mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=testing-source-epel5&arch=$architecture",
    	enabled        => 0,
		gpgcheck       => 1,
		failovermethod => "priority",
	    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL",
		priority       => 17
    }

	yum::managed_repo { "kbs-CentOS-Extras":
	    descr    => "CentOS.Karan.Org-EL$lsbmajdistrelease - Stable",
        baseurl  => "http://centos.karan.org/el$lsbmajdistrelease/extras/stable/$architecture/RPMS/",
	    enabled  => 1,
		gpgcheck => 1,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh",
	    priority => 20
    }

	yum::managed_repo { "kbs-CentOS-Extras-Testing":
	    descr    => "CentOS.Karan.Org-EL$lsbmajdistrelease - Testing",
        baseurl  => "http://centos.karan.org/el$lsbmajdistrelease/extras/testing/$architecture/RPMS/",
	    enabled  => 0,
    	gpgcheck => 1,
	    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh",
		priority => 20
	}
	
    yum::managed_repo { "kbs-CentOS-Misc":
	    descr    => "CentOS.Karan.Org-EL$lsbmajdistrelease - Stable",
        baseurl  => "http://centos.karan.org/el$lsbmajdistrelease/misc/stable/$architecture/RPMS/",
	    enabled  => 1,
		gpgcheck => 1,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh",
	    priority => 20
    }

    yum::managed_repo { "kbs-CentOS-Misc-Testing":
	    descr    => "CentOS.Karan.Org-EL$lsbmajdistrelease - Testing",
        baseurl  => "http://centos.karan.org/el$lsbmajdistrelease/misc/testing/$architecture/RPMS/",
	    enabled  => 0,
		gpgcheck => 1,
    	gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-kbsingh",
	    priority => 20
	}
}
