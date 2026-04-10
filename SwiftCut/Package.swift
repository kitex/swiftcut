// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCut",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(
            name: "VideoEditorApp",
            targets: ["SwiftCut"])
    ],
    dependencies: [
        // For iOS development, we'll use standard system frameworks
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftCut",
            dependencies: [],
            path: ".",
            resources: [
                .process("Assets.xcassets"),
                .process("LaunchScreen.storyboard"),
                .process("Main.storyboard")
            ]
        ),
        .testTarget(
            name: "SwiftCutTests",
            dependencies: ["SwiftCut"]
        ),
    ],
    swiftLanguageModes: [.v6]
)