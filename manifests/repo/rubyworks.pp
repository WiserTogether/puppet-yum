# Class: yum::repo::rubyworks
#
#
class yum::repo::rubyworks {
	yum::managed_repo { 'rubyworks':
		descr    => 'Rubyworks for better Ruby stuff',
		baseurl  => "http://rubyworks.rubyforge.org/redhat/${lsbmajdistrelease}/RPMS/${architecture}",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RubyWorks.GPG.key'
	}
}
