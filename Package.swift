// swift-tools-version:4.0
import PackageDescription

let package = Package(
	name: "CRC32",
	products: [
		.library(name: "CRC32", targets: ["CRC32"]),
	],
	targets: [
		.target(name: "CRC32", path: "Sources"),
		.testTarget(name: "CRC32Tests", dependencies: ["CRC32"]),
	]
)
