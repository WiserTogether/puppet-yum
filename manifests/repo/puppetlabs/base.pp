# Class: yum::repo::puppetlabs::base
#
#
class yum::repo::puppetlabs::base {
  include yum::repo::puppetlabs::deps
  include yum::repo::puppetlabs::enterprise-extras
	yum::managed_repo { 'puppetlabs-base':
		descr    => 'Puppetlabs packages - base',
		baseurl  => 'http://yum.puppetlabs.com/el/$releasever/products/$basearch/',
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
    require => [Yumrepo['puppetlabs-deps'],Yumrepo['puppetlabs-enterprise-extras']]
	}
}
