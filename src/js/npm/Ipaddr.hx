package js.npm;
import haxe.DynamicAccess;
import haxe.extern.EitherType;
import js.npm.ipaddr.BaseIP;

@:jsRequire('ipaddr.js')
extern class Ipaddr {
  /**
    You can match against your own range list by using ipaddr.subnetMatch(address, rangeList, defaultName) method. It
    can work with both IPv6 and IPv4 addresses, and accepts a name-to-subnet map as the range list.
   **/
  @:overload(function(addr:BaseIP, rangeList:DynamicAccess<EitherType<BaseIP,Array<BaseIP>>>):String {})
  static function subnetMatch(addr:BaseIP, rangeList:DynamicAccess<EitherType<BaseIP,Array<BaseIP>>>,
      defaultName:String):String;

  /**
    The fromByteArray() method will take an array and create an appropriate IPv4 or IPv6 object if the input satisfies
    the requirements. For IPv4 it has to be an array of four 8-bit values, while for IPv6 it has to be an array of
    sixteen 8-bit values.
   **/
  static function fromByteArray(arr:Array<Int>):BaseIP;

  /**
    The ipaddr.isValid method returns true if the address is a valid IPv4 or IPv6 address, and false otherwise. It does
    not throw any exceptions.
   **/
  static function isValid(addr:String):Bool;

  /**
    The ipaddr.parse method returns an object representing the IP address, or throws an Error if the passed string is
    not a valid representation of an IP address.
   **/
  static function parse(addr:String):BaseIP;

  /**
    The ipaddr.process method works just like the ipaddr.parse one, but it automatically converts IPv4-mapped IPv6
    addresses to their IPv4 couterparts before returning. It is useful when you have a Node.js instance listening on an
    IPv6 socket, and the net.ivp6.bindv6only sysctl parameter (or its equivalent on non-Linux OS) is set to 0. In this
    case, you can accept IPv4 connections on your IPv6-only socket, but the remote address will be mangled. Use
    ipaddr.process method to automatically demangle it.
   **/
  static function process(addr:String):BaseIP;
}
