// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "feather-user-gateway-accounts-api",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "UserGatewayAccountsAPIKit", targets: ["UserGatewayAccountsAPIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feather-framework/feather-openapi-kit", .upToNextMinor(from: "0.9.6")),
        .package(url: "https://github.com/feather-framework/feather-api-kit", .upToNextMinor(from: "0.1.1")),
        .package(url: "https://github.com/feather-modules/feather-system-api", .upToNextMinor(from: "0.2.0")),
        .package(url: "https://github.com/feather-modules/feather-user-api", branch: "feature/oauth2"),
        .package(url: "https://github.com/jpsim/Yams", from: "5.0.0"),
    ],
    targets: [

        .target(
            name: "UserGatewayAccountsAPIKit",
            dependencies: [
                .product(name: "FeatherOpenAPIKit", package: "feather-openapi-kit"),
                .product(name: "FeatherAPIKit", package: "feather-api-kit"),
                .product(name: "SystemAPIKit", package: "feather-system-api"),
                .product(name: "UserAPIKit", package: "feather-user-api"),
            ],
            plugins: [
                .plugin(name: "FeatherOpenAPIGenerator", package: "feather-openapi-kit")
            ]
        ),
        
        .executableTarget(
            name: "TestAPIGenerator",
            dependencies: [
                .product(name: "Yams", package: "Yams"),
                .product(name: "FeatherOpenAPIKit", package: "feather-openapi-kit"),
                .target(name: "UserGatewayAccountsAPIKit"),
            ]
        ),
        
        .testTarget(
            name: "UserGatewayAccountsAPIKitTests",
            dependencies: [
                .target(name: "UserGatewayAccountsAPIKit")
            ]
        ),
    ]
)
