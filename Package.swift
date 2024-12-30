// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sutinky",
    platforms: [.iOS(.v17), .macOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Sutinky",
            targets: ["Sutinky"]),
    ],
    targets: [
            .target(
                name: "Sutinky",  // This should match the directory name
                path: "Sources/Sutinky"  // Path to your source files
            ),
            .testTarget(
                name: "SutinkyTests",  // Test target name
                dependencies: ["Sutinky"],  // Dependency to the Sutinky target
                path: "Tests/SutinkyTests"  // Path to test files
            ),
        ]
)
