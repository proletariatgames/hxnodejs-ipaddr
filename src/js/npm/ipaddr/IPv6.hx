package js.npm.ipaddr;

@:jsRequire('ipaddr.js', 'IPv6')
extern class IPv6 extends BaseIP {
  /**
    To access the underlying binary representation of the address, use addr.parts.
   **/
  var parts:Array<Int>;

  /**
    Sometimes you will want to convert IPv6 not to a compact string representation (with the :: substitution); the
    toNormalizedString() method will return an address where all zeroes are explicit.
   **/
  function toNormalizedString():String;

  /**
    The isIPv4MappedAddress() method will return true if this address is an IPv4-mapped one, and toIPv4Address() will
    return an IPv4 object address.
   **/
  function isIPv4MappedAddress():Bool;

  function toIPv4Address():IPv4;

  // static properties
  /**
    The ipaddr.isValid method returns true if the address is a valid IPv4 or IPv6 address, and false otherwise. It does
    not throw any exceptions.
   **/
  static function isValid(addr:String):Bool;

  /**
    The ipaddr.parse method returns an object representing the IP address, or throws an Error if the passed string is
    not a valid representation of an IP address.
   **/
  static function parse(addr:String):IPv6;
}
