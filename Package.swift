// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TTCountryFlagLabel",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "TTCountryFlagLabel",
            targets: ["TTCountryFlagLabel"]),
    ],
    targets: [
        .target(
            name: "TTCountryFlagLabel",
            path: "TTCountryFlagLabel/Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("SWIFT_PACKAGE"),
                .define("TARGET_OS_IPHONE", to: "1"),
                .unsafeFlags(["-fmodules", "-fobjc-arc"])
            ]
        )
    ]
) 