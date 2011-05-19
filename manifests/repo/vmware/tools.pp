# Class: yum::repo::vmware::tools
#
#
class yum::repo::vmware::tools {
	yum::managed_repo { 'VMware-tools':
		descr    => 'VMware Tools',
		baseurl  => "http://packages.vmware.com/tools/esx/4.1u1/rhel${lsbmajdistrelease}/${architecture}",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => 'file:///etc/pki/rpm-gpg/VMWARE-PACKAGING-GPG-KEY.pub',
	}
}
