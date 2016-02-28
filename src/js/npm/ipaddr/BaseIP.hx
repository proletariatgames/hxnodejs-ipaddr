package js.npm.ipaddr;
import haxe.DynamicAccess;
import haxe.extern.EitherType;

extern class BaseIP {
  /**
    One can determine the type of address by calling addr.kind(). It will return either "ipv6" or "ipv4".
   **/
  function kind():IPKind;

  /**
    An address can be converted back to its string representation with addr.toString()
   **/
  function toString():String;

  /**
    A match(range, bits) method can be used to check if the address falls into a certain CIDR range. Note that an
    address can be (obviously) matched only against an address of the same type.

    Alternatively, match can also be called as match([range, bits]). In this way, it can be used together with the
    parseCIDR(string) method, which parses an IP address together with a CIDR range.
   **/
  @:overload(function(rangeAndBits:Array<Dynamic>):Bool {})
  function match(range:BaseIP, bits:Int):Bool;

  /**
    The addresses can be converted to their byte representation with toByteArray(). (Actually, JavaScript mostly does
    not know about byte buffers. They are emulated with arrays of numbers, each in range of 0..255.)
   **/
  function toByteArray():Array<Int>;
}
