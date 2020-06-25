// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "GatewayAPI",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "GatewayAPI",
            targets: ["gatewayapi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-rc.3.5"),
        .package(url: "https://github.com/vapor-community/GatewayAPIKit.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "gatewayapi",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "GatewayAPIKit", package: "GatewayAPIKit")
        ]),
        .testTarget(
            name: "GatewayAPITests",
            dependencies: ["gatewayapi"]),
    ]
)
