class yum::redhat::five {
    include yum::repo::extras
    include yum::repo::epel::main
}
