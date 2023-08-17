// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ReadyRemitSDKPackage",
    products: [
        .library(
            name: "ReadyRemitSDKLite",
            targets: ["ReadyRemitSDKLite", "VisaSensoryBranding"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "ReadyRemitSDKLite",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/ReadyRemitSDKLite.xcframework.zip",
            checksum: "6ad5e727b52c88da020731b8d0f6b21375f9cd7037dfbce4f780392533d88977"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/VisaSensoryBranding.xcframework.zip",
            checksum: "7f99f22c6433a22c443a3c0f37963218461ad68379b4d64a762c1f52b027659b"
        )
    ]
)

