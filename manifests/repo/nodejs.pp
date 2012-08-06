# Class: yum::repo::nodejs
#
#
class yum::repo::nodejs {
	yum::managed_repo { 'nodejs':
		descr    => "Node.js for Enterprise Linux 5 - ${architecture}",
                mirrorlist => "http://nodejs.tchol.org/mirrors/nodejs-stable-el\$releasever",
		enabled  => 1,
                gpgkey => "http://nodejs.tchol.org/RPM-GPG-KEY-tchol",
		gpgcheck => 0,
	}
}
