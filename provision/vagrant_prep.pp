$vagrant_insecure_public_key = 'AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ=='

user { 'vagrant':
  ensure     => 'present',
  groups     => 'wheel',
  managehome => 'true',
  noop       => 'false',
  password   => 'vagrant',
  shell      => '/bin/bash',
}

ssh_authorized_key { 'vagrant insecure public key':
  ensure => 'present',
  key    => $vagrant_insecure_public_key,
  noop   => 'false',
  user   => 'vagrant',
  type   => 'ssh-rsa',
}
