# Class: yum::centos::five
#
#
class yum::centos::five {
	include yum::repo::base
	include yum::repo::updates
	include yum::repo::addons
	include yum::repo::extras
	#include yum::repo::centosplus
	include yum::repo::rpmforge
	include yum::repo::atrpms
	#include yum::repo::plus
	include yum::repo::epel::main
	include yum::repo::kbs::extras
	include yum::repo::kbs::misc
}
