// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftGodotLite",
    platforms: [
        .macOS(.v13),
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "SwiftGodotLite",
            targets: ["SwiftGodotLite"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftGodotLite",
            dependencies: ["GDExtension"]
        ),
        .target(
            name: "GDExtension"
        ),
    ]
)
