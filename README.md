# CRC32

The CRC32 module calculates CRC sums of 32 bit lengths.
It generates the same CRC values as ZMODEM, PKZIP, PICCHECK and many others.
This module is inspired by Perl module called `String::CRC32`.

## Usage

```swift
import CRC32

let crcOfString = crc32("some string")
let sameCRC = crc32(" string", crcInit: crc32("some"))

let array: [UInt8] = [10, 20, 30]
let crcOfArray = array.withUnsafeBytes { crc32($0) }
```
