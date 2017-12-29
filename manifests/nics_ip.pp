$nics = $facts['networking']['interfaces']
$nics.each | String $interface, Hash $att | {
  notice ("Interface ${interface}'s IP is: ${att['ip']}")
}
