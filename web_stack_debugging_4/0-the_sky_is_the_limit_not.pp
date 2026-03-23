# Fix Nginx to handle more requests by increasing ULIMIT
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx && nginx -s reload',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/',
}