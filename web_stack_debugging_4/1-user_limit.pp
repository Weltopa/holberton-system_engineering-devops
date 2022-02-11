# Increase limit
exec { 'increase limit':
  command => 'sed -i "/holberton hard/s/5/9999/" /etc/security/limits.conf',
  path    => '/bin/'
}

# Increase alt limit
exec { 'increase limit':
  command => 'sed -i "/holberton soft/s/4/9999/" /etc/security/limits.conf',
  path    => '/bin/'
}
