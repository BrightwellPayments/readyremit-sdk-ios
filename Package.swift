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
            checksum: "926a0e9a8dd6ca4511212aba4f30c4e54d2e76d24c88698ff40dfb0822360eca"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "\(baseURL)/VisaSensoryBranding.xcframework.zip",
            checksum: "11bc01f9722512d8666110903cfb37c7566ff2875a57deac3e5c3a90ee1b5d4"
        )
    ]
)
