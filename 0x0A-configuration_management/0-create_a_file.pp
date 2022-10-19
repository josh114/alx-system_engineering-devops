# Create a file in /tmp

file { 'holberton':
  path    => '/tmp/school',
  mode    => '0744',
  ensure  => 'present',
  group   => 'www-data',
  owner   => 'www-data',
  content => 'I love Puppet',
}
