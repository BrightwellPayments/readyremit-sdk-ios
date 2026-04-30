// swift-tools-version: 5.9
import PackageDescription

let version = "10.2.0"
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
            checksum: "da66c0e74438954722ceddddfcbef0edcca6f1e13510b9c35642824fbb946ba1"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "2b0b3e88625a5fea502168e8b7d491830b2dead4f807684b785d2692a970d44d"
        )
    ]
)
