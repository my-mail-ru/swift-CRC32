import XCTest
@testable import CRC32

class CRC32Tests: XCTestCase {
	static var allTests = [
		("testCRC32", testCRC32),
	]

	func testCRC32() {
		XCTAssertEqual(crc32("This is the test string"), 1835534707)
		XCTAssertEqual(crc32("This is another test string"), 2154698217)

		let str = "This is the test string"
		for i in str.indices {
			let v = crc32(String(str[str.startIndex..<i]))
			XCTAssertEqual(crc32(String(str[i..<str.endIndex]), crcInit: v), 1835534707)
		}
	}
}
