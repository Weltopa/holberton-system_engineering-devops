# Increase traffic
exec {'increase traffic':
  command => 'sed -i "s/15/$( ulimit -n )/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

# Restart program
exec { 'nginx restart':
  command => 'service nginx restart',
  path    => '/usr/bin/'
}
