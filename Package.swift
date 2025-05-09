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
                 from: "2.9.1"),
    ],
    targets: [
        .target(name: "ReadyRemitSDKTarget",
                dependencies: [.target(name: "ReadyRemitSDKWrapper"),],
               path: "SwiftPM-Exclude/ReadyRemitTargetWrp"),
        .target(name: "ReadyRemitSDKWrapper",
                dependencies: [
                    .target(name: "ReadyRemitSDK"),
                    .target(name: "VisaSensoryBranding"),
                    "Swinject",                
                ],
               path: "SwiftPM-Exclude/ReadyRemitWrapper"),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v9.2.1/VisaSensoryBranding.xcframework.zip",
            checksum: "e927457beef2a7c17e000b424d9c856fcb4622772f2ab24bb6e9c34b72d40a3c"
        ),
        .binaryTarget(
            name: "ReadyRemitSDK",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v9.2.1/ReadyRemitSDK.zip",
            checksum: "036b6c4db10412360aa2fa03c3ae070aa61fe6b1737271c5fe3d6367404622f9"
        )
    ],
    swiftLanguageVersions: [.v5]
)
