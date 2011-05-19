# Define: yum::localinstall
# Parameters:
# $file, $provides
#
define yum::localinstall ($file,
													$provides) {

	exec { "yum-localinstall-${name}":
		command => "/usr/bin/yum -d 0 -e 0 -y install ${file}",
		unless  => "/bin/rpm -q ${provides}",
	}
}
