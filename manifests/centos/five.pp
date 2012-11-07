# Class: yum::centos::five
#
#
class yum::centos::five {
	include yum::repo::base
	include yum::repo::updates
}
