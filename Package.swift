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
        .package(name: "Swinject", 
                 url: "https://github.com/Swinject/Swinject.git",
                 from: "2.7.1"),
        .package(name: "SwinjectAutoRegistration",
                 url: "https://github.com/Swinject/SwinjectAutoRegistration.git", 
                 from: "2.8.0"),
        .package(
            name: "Mixpanel",
            url: "https://github.com/mixpanel/mixpanel-swift.git",
            from: "2.9.9"),
        .package(name: "LaunchDarkly",
            url: "https://github.com/launchdarkly/ios-client-sdk.git",
                 from: "5.4.0"),
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
                    "SwinjectAutoRegistration",
                    "Mixpanel",
                    "LaunchDarkly"
                ],
               path: "SwiftPM-Exclude/ReadyRemitWrapper"),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v7.2/VisaSensoryBranding.xcframework.zip",
            checksum: "03ff1cbb5d50dc3d68521506628549d15c26744ecfbf5565d647716bb6118c80"
        ),
        .binaryTarget(
            name: "ReadyRemitSDK",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v7.2/ReadyRemitSDK.zip",
            checksum: "10e578c8a92738c64959f079511855de11683c8fd613c2197b1adc8298feecab"
        )
    ],
    swiftLanguageVersions: [.v5]
)
