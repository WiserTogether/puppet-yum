class yum::repo::pgdg90 {
	yum::managed_repo { "pgdg90":
		descr => "PostgreSQL 9.0 \$releasever - \$basearch",
		      baseurl => "http://yum.pgrpms.org/9.0/redhat/rhel-${lsbmajdistrelease}-${architecture}",
		      enabled => 1,
		      gpgcheck => 1,
		      gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG"
	}
}
