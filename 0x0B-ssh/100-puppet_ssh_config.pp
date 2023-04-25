# Set up SSH configuration for passwordless logins

file { '~/.ssh/school':
  ensure => present,
  mode   => '0600',
  source => '~/.ssh/school',
}

file { '~/.ssh/config':
  ensure  => present,
  mode    => '0644',
  content => "
    Host 52.86.68.128
      IdentityFile ~/.ssh/school
      User ubuntu
  ",
}