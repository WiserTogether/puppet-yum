# Class: yum::repo::atrpms
#
#
class yum::repo::atrpms {
	yum::managed_repo { 'centos5-atrpms':
		descr    => "CentOS ${lsbmajdistrelease} - ${architecture} - ATrpms",
		baseurl  => "http://dl.atrpms.net/el${lsbmajdistrelease}-${architecture}/atrpms/stable",
		enabled  => 1,
		gpgcheck => 0,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-atrpms'
	}
}
