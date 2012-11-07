# Class: yum::repo::base
#
#
class yum::repo::base {
  case $operatingsystem {
     Redhat: { notice 'no base repo needed on RHEL' }
     CentOS: {
        yum::managed_repo { 'base':
            descr      => "CentOS-${lsbmajdistrelease} - Base",
            mirrorlist => "http://mirrorlist.centos.org/?release=${lsbmajdistrelease}&arch=${architecture}&repo=os",
            enabled    => 1,
            gpgcheck   => 1,
            gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5',
        }
     }
}
