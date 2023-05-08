// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libraries",
    products: [
        .library(name: "FeatureB", targets: ["FeatureB"])
    ],
    targets: [
        .target(name: "FeatureB", path: "FeatureB/Sources")
    ]
)
