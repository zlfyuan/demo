// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Demo",
    products: [
        .executable(name: "tr", targets: ["Demo"])
    ],
    dependencies: [
        .package(url: "https://github.com/kylef/Commander", from: "0.9.1"),
        .package(url: "https://github.com/yonaskolb/Mint", from: "0.13.0")
    ],
    targets: [
        .target(
            name: "Demo",
            dependencies: ["Commander","Mint"]),
        .testTarget(
            name: "DemoTests",
            dependencies: ["Demo"]),
    ]
)
