// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AutoLayoutTextView",
    platforms: [
        .macOS(.v10_11)
    ],
    products: [
        .library(name: "AutoLayoutTextView", targets: ["AutoLayoutTextView"]),
    ],
    targets: [
        .target(name: "EagerTextStorage", publicHeadersPath: "."),
        .target(name: "EagerLayoutManager", dependencies: ["EagerTextStorage"]),
        .target(name: "AutoLayoutTextView", dependencies: ["EagerLayoutManager"])
    ]
)
