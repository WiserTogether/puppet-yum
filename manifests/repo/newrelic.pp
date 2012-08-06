# Class: yum::repo::newrelic
#
#
class yum::repo::newrelic {
	yum::managed_repo { 'newrelic':
		descr      => "NewRelic for el5",
                baseurl    =>  "http://yum.newrelic.com/pub/newrelic/el5/\$basearch",
		enabled    => 1,
		gpgcheck   => 1,
		gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-NewRelic"
	}
}
