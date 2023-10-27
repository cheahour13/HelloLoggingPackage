// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloLoggingPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HelloLoggingPackage",
            targets: ["HelloLoggingPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HelloLoggingPackage"),
        .testTarget(
            name: "HelloLoggingPackageTests",
            dependencies: ["HelloLoggingPackage"]),
        .binaryTarget(name: "HelloLoggingFramework",
                      path: "./Sources/HelloLoggingFramework.framework")
    ]
)
