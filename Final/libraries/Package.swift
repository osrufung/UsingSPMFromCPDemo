// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libraries",
    products: [
        .library(name: "FeatureB", targets: ["FeatureB"]),
        .executable(name: "XcodeSPMI", targets: ["XcodeSPMI"])
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/XcodeProj.git", .upToNextMajor(from: "8.9.0")),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.2"),
    ],
    targets: [
        .target(name: "FeatureB", path: "FeatureB/Sources"),
        .executableTarget(
            name: "XcodeSPMI",
            dependencies: [
                .product(name: "XcodeProj", package: "XcodeProj"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ])
    ]
)
