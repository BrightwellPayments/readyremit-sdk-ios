// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ReadyRemitSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ReadyRemitSDK",
            targets: ["ReadyRemitSDK", "VisaSensoryBranding"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ReadyRemitSDK",
            path: "ReadyRemitSDK.xcframework.zip"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            path: "VisaSensoryBranding.xcframework.zip"
        )
    ]
)
