# Haxe/hxnodejs externs for the [ipaddr.js](https://www.npmjs.com/package/ipaddr.js) npm library

Tested using `ipaddr.js` version **1.1.0**

Example:
```haxe
import js.npm.Ipaddr;

var addr = Ipaddr.parse('2001:db8:1234::1');
var range = Ipaddr.parse("2001:db8::");

addr.match(range, 32); // => true
```
