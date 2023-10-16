// swift-tools-version:5.3

import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)
let package = Package(
    name: "Socket",
    products: [
        .library(
            name: "Socket",
            targets: ["Socket"]),
        .library(
            name: "BlueSocketTestCommonLibrary",
            targets: ["BlueSocketTestCommonLibrary"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Socket",
            dependencies: [],
            exclude: ["Info.plist", "Socket.h"]
        ),
        .testTarget(
            name: "SocketTests",
            dependencies: ["Socket", "BlueSocketTestCommonLibrary"]
        ),
        .target(
            name: "BlueSocketTestCommonLibrary",
            dependencies: [ "Socket" ]
        ),
    ]
)
#else
fatalError("Unsupported OS")
#endif
