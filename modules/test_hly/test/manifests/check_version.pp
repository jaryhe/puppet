define test::check_version () {
	
	$app_version = "3.2.2"
        $min_version = $puppetversion
        notify { "check version $title": }
        tag("version")
	if versioncmp( $app_version, $min_version ) >= 0 {
            notify { "Version OK $aa": }
            file{"/tmp/$hostname.txt":content => "hello world!";}
        } else {
            notify { "Upgrade needed $aa": }
            file{"/tmp/$hostname.txt":content => "fuck you!";}
        }
}
