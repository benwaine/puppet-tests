class cassandra {
	
apt::source { "cassandra11x":
  location          => "http://www.apache.org/dist/cassandra/debian",
  release           => "11x",
  repos             => "main",
  required_packages => "debian-keyring debian-archive-keyring",
  key               => "F758CE318D77295D",
  key_server        => "pgp.mit.edu",
  include_src       => true
}

apt::builddep { "cassandra":
  require => Apt::Source["cassandra 11x"]
}   

}
