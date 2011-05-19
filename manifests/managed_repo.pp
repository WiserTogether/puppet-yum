# Define: yum::managed_repo
# Parameters:
# 
#
define yum::managed_repo ($descr          = 'absent',
													$baseurl        = 'absent',
													$mirrorlist     = 'absent',
													$enabled        = 0,
													$gpgcheck       = 0,
													$gpgkey         = 'absent',
													$failovermethod = "absent",
													$priority       = 99) {

	# ensure that everything is setup
	include yum::prerequisites
    
	file { "/etc/yum.repos.d/${name}.repo":
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
		replace => false,
		before  => Yumrepo[$name],
		require => [ File['/etc/yum.repos.d/'], Package['yum-priorities'] ],
	}

   yumrepo { $name:
		descr          => $descr,
		baseurl        => $baseurl, 
		mirrorlist     => $mirrorlist,
		enabled        => $enabled,
		gpgcheck       => $gpgcheck,
		gpgkey         => $gpgkey, 
		failovermethod => $failovermethod,
		priority       => $priority,
		require        => [ File['/etc/pki/rpm-gpg/'], Package['yum-priorities'] ],
	}
}
