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
		for i in str.characters.indices {
			let v = crc32(String(str.characters[str.characters.startIndex..<i]))
			XCTAssertEqual(crc32(String(str.characters[i..<str.characters.endIndex]), crcInit: v), 1835534707)
		}
	}
}
