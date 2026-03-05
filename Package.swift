// swift-tools-version: 5.9
import PackageDescription

let version = "10.0.0"
let baseURL = "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/\(version)"

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
            url: "\(baseURL)/ReadyRemitSDK.xcframework.zip",
            checksum: "c452306096e2ddf6b1030aa296467e72bba84d2a44b4f3788491713eb0e93fe3"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "2b0b3e88625a5fea502168e8b7d491830b2dead4f807684b785d2692a970d44d"
        )
    ]
)
