# Class: yum::repo::easel
#
#
class yum::repo::epel::easel {
	yum::managed_repo { 'easel':
		descr      => "Easel EPEL",
                baseurl    => "http://easel.github.com/yum-repo-misc/epel/5/x86_64/",
		enabled    => 1,
		gpgcheck   => 0,
	}
}
