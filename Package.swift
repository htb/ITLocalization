// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ITLocalization",
    products: [
        .library(name: "ITLocalization", targets: ["ITLocalization"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ITLocalization", dependencies: []),
        .testTarget(name: "ITLocalizationTests", dependencies: ["ITLocalization"]),
    ]
)
