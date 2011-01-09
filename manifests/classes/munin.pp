# manifests/yum.pp

class yum::munin {
	file { "/var/lib/munin/yum_updates.py":
		source  => "puppet://$server/yum/munin/yum_updates.py",
		owner   => root,
		group   => 0,
		mode    => 0755,
		require => Package["munin-node"],
		notify  => Exec["yum_munin_updates_init"]
	}
	
	exec { "yum_munin_updates_init":
		command     => "/var/lib/munin/yum_updates.py",
		refreshonly => true
	}

	file { "/etc/cron.daily/munin_yum_updates.sh":
		source  => "puppet:///yum/munin/munin_yum_updates.sh",
		owner   => root,
		group   => 0,
		mode    => 0755,
		require => File["/var/lib/munin/yum_updates.py"]
	}

	munin::plugin::deploy { "yum_updates":
		source => "yum/munin/yum_updates"
	}
}
