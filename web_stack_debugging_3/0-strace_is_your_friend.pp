# Fix Apache 500 error by fixing typo in WordPress config
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/ /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/',
}