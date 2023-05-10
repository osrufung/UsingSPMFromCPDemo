// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageB",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "FeatureB", targets: ["FeatureB"])
    ],
    dependencies: [],
    targets: [
        .target(name: "FeatureB", path: "Sources")
    ]
)
