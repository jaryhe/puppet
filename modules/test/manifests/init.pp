class test inherits test::params{
	file { "/tmp/$hostname.txt":
		content => $test::params::context,
		tag    => "hly",
	}
	file { '/tmp/aaaa':
		ensure => $test::params::file,
		tag    => "yy",
	}
	exec { 'test_logoutput':
		command => '/usr/bin/ls /var/log/messages',
		logoutput => on_failure,
		tag  => "ff",
	}
	include test::install
	include test::version
	include test::install_1
} 
