# Class: yum::centos::six
#
#
class yum::centos::six {
	include yum::repo::base
	include yum::repo::updates
}
