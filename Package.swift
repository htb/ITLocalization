// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ITLocalization",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "ITLocalization", targets: ["ITLocalization"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ITLocalization", dependencies: []),
        .testTarget(name: "ITLocalizationTests", dependencies: ["ITLocalization"]),
    ]
)
