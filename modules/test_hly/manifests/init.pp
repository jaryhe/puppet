class test_hly inherits test_hly::params{
	tag("ha")
	file { "/tmp/$hostname.txt1":
		content => $test_hly::params::context,
		tag    => "jary",
	}
	file { '/tmp/bbbbbb':
		ensure => $test_hly::params::file,
		tag    => "yy",
	}
	exec { 'test_hly_logoutput':
		command => '/usr/bin/ls /var/log/messages',
		logoutput => on_failure,
		tag  => "ff",
	}
} 
