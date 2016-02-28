package js.npm.ipaddr;

@:enum abstract IPKind(String) from String {
  var IPv4 = 'ipv4';
  var IPv6 = 'ipv6';
}
