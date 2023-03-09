// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ys_image_cache",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ys_image_cache",
            targets: ["ys_image_cache"]),
//        .library(
//            name: "ys_networking",
//            targets: ["ys_networking"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/yoonjason/ys_networking", from: "1.0.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ys_image_cache",
            dependencies: [
                .product(name: "ys_networking", package: "ys_networking")
            ]),
        .testTarget(
            name: "ys_image_cacheTests",
            dependencies: ["ys_image_cache"]),
    ]
)
