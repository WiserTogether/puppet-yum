# Define: yum::managed_repo
# Parameters:
# 
#
define yum::managed_repo ($descr = "absent", $baseurl = "absent", $mirrorlist = "absent", $enabled = 0, $gpgcheck = 0, $gpgkey = 'absent',
						  $failovermethod = "absent", $priority = 99) {
	# ensure that everything is setup
    include yum::prerequisites
    
    file { "/etc/yum.repos.d/${name}.repo":
		ensure  => file,
		replace => false,
		mode    => 0644,
		owner   => root,
		group   => root,
		before  => Yumrepo[$name],
		require => [ File[yum_repos_d], Package[yum-priorities] ]
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
		require        => [ File[rpm_gpg], Package[yum-priorities] ]
    }
}
