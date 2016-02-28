package js.npm.ipaddr;

@:jsRequire('ipaddr.js', 'IPv4')
extern class IPv4 extends BaseIP {
  /**
    To access the underlying representation of the address, use addr.octets.
   **/
  var octets:Array<Int>;

  /**
    prefixLengthFromSubnetMask() will return a CIDR prefix length for a valid IPv4 netmask or false if the netmask is
    not valid.

    ```
    Ipaddr.IPv4.parse('255.255.255.240').prefixLengthFromSubnetMask() == 28
    Ipaddr.IPv4.parse('255.192.164.0').prefixLengthFromSubnetMask()  == null
    ```
   **/
  function prefixLengthFromSubnetMask():Null<Int>;

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
  static function parse(addr:String):IPv4;
}
