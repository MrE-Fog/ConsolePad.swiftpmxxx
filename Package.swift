// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "JS Console",
    defaultLocalization: "en",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "JS Console",
            targets: ["AppModule"],
            bundleIdentifier: "xyz.kebo.JSConsole",
            teamIdentifier: "X4678G5DL2",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/siteline/SwiftUI-Introspect", "0.1.3"..<"0.2.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "Introspect", package: "SwiftUI-Introspect")
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
