# Fix Nginx to handle more requests by increasing ULIMIT
exec { 'fix--for-nginx':
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/g" /etc/default/nginx; service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/:/usr/bin/',
}