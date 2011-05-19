# Class: yum::repo::epel::puppet
#
#
class yum::repo::epel::puppet {
	yum::managed_repo { 'epel-puppet':
		descr    => "Extra Packages for Enterprise Linux ${lsbmajdistrelease} - ${architecture} - Puppet",
		baseurl  => "http://tmz.fedorapeople.org/repo/puppet/epel/${lsbmajdistrelease}/${architecture}/",
		enabled  => 1,
		gpgcheck => 0,
	}
}
