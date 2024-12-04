// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTube",
    platforms: [.macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftTube",
            targets: ["SwiftTube"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.7.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftTube",
            dependencies: ["YouTubeDataOpenAPIClient"]
        ),
        .target(name: "YouTubeDataOpenAPITypes", dependencies: [
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        ]),
        .target(
            name: "YouTubeDataOpenAPIClient",
            dependencies: ["YouTubeDataOpenAPITypes"]
        ),
        .testTarget(
            name: "SwiftTubeTests",
            dependencies: ["SwiftTube"]
        ),
    ]
)
