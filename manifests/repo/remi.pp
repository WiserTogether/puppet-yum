# Class: yum::repo::remi
#
#
class yum::repo::remi {
	yum::managed_repo { 'remi':
		descr    => "Les RPM de remi pour Enterpise Linux ${lsbmajdistrelease} - ${architecture}",
		baseurl  => "http://rpms.famillecollet.com/el${lsbmajdistrelease}.${architecture}/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi'
    }
}
