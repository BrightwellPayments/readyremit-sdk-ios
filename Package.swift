// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ReadyRemitSDKPackage",
    products: [
        .library(
            name: "ReadyRemitSDK",
            targets: ["ReadyRemitSDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git",
                 from: "2.7.1"),
    ],
    targets: [
        .target(name: "ReadyRemitSDKTarget",
                dependencies: [.target(name: "ReadyRemitSDKWrapper"),],
               path: "SwiftPM-Exclude/ReadyRemitTargetWrp"),
        .target(name: "ReadyRemitSDKWrapper",
                dependencies: [
                    .target(name: "ReadyRemitSDK"),
                    .target(name: "VisaSensoryBranding"),
                    "Swinject",                ],
               path: "SwiftPM-Exclude/ReadyRemitWrapper"),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v8.0/VisaSensoryBranding.xcframework.zip",
            checksum: "03ff1cbb5d50dc3d68521506628549d15c26744ecfbf5565d647716bb6118c80"
        ),
        .binaryTarget(
            name: "ReadyRemitSDK",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v8.0/ReadyRemitSDK.zip",
            checksum: "ca56cddb78685983662d5c4897461fdc6708fefc4a63778ff25bcf3c1079d994"
        )
    ],
    swiftLanguageVersions: [.v5]
)
