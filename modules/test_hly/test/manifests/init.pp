class test{
        $app_version = "3.2.2"
        $min_version = $puppetversion
#	tag("version")
#	if tagged("version") {
#            if versioncmp( $app_version, $min_version ) >= 0 {
#                notify { "Version OK $aa": }
#	        file{"/tmp/$hostname.txt":content => "hello world!";}
#            } else {
#                notify { "Upgrade needed $aa": }
#                file{"/tmp/$hostname.txt":content => "fuck you!";}
#            }
#	}
	notify { "This is dir": }
}
    test::check_version { 'check version':
        tag => ['version'],
    }

    test::install{ 'install':
	require   => TEST::Check_version['check version'],
    }
