// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "Domain",
    platforms: [
        .iOS(.v26),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Domain",
            targets: ["Domain"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.65.0")
    ],
    targets: [
        .target(
            name: "Domain",
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),
        .testTarget(
            name: "DomainTests",
            dependencies: ["Domain"]
        )
    ],
    swiftLanguageModes: [.v6]
)
