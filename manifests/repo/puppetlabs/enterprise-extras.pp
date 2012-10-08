# Class: yum::repo::puppetlabs::base
#
#
class yum::repo::puppetlabs::enterprise-extras {
  include deps
	yum::managed_repo { 'puppetlabs-enterprise-extras':
		descr    => 'Puppetlabs packages - enterprise extras',
		baseurl  => "http://yum-enterprise.puppetlabs.com/el/${lsbmajdistrelease}/extras/\$basearch/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
	}
}
