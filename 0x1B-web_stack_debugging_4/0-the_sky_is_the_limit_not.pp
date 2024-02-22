# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'upperlimit' :
  command =>  'sed -i "s/15/10000/g" /etc/default/nginx;service nginx restart',
  path    =>  '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  =>  'test -e /etc/default/nginx',
}
