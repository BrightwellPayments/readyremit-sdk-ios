// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ReadyRemitSDKPackage",
    products: [
        .library(
            name: "ReadyRemitSDK",
            targets: ["ReadyRemitSDK", "AcuantCamera", "AcuantCommon", "AcuantFaceCapture", "AcuantImagePreparation", "AcuantPassiveLiveness", "ScanForensicsPlus", "TesseractOCR", "VisaSensoryBranding"]
        ),
        .library(
            name: "ReadyRemitSDKLite",
            targets: ["ReadyRemitSDKLite", "VisaSensoryBranding"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "ReadyRemitSDK",
            url: "https://githubURL/ReadyRemitSDK.xcframework.zip",
            checksum: "37c5e808a8a4d4bbf777b7c2bf250f0a6a0689f9d160dce3a0c6c82ae8d3fb85"
        ),
        .binaryTarget(
            name: "ReadyRemitSDKLite",
            url: "https://githubURL/ReadyRemitSDK.xcframework.zip",
            checksum: "6ad5e727b52c88da020731b8d0f6b21375f9cd7037dfbce4f780392533d88977"
        ),
        .binaryTarget(
            name: "AcuantCamera",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/AcuantCamera.xcframework.zip",
            checksum: "09cb01a503f517ae20d50ece506cd8f8161b33365b97d967a75ed61163eb85c4"
        ),
        .binaryTarget(
            name: "AcuantCommon",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/AcuantCommon.xcframework.zip",
            checksum: "28988f77e29a6df69e24828dd7b1b159195110247938902c244032f457475fa5"
        ),
        .binaryTarget(
            name: "AcuantFaceCapture",
            url:"https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/AcuantFaceCapture.xcframework.zip",
            checksum: "bc3b48ebe5ebe325853413a65c89b5289d8dc1e437faf3d330759ce4d69e628a"
        ),
        .binaryTarget(
            name: "AcuantImagePreparation",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/AcuantImagePreparation.xcframework.zip",
            checksum: "26b33b61d57d5c72455d9e822579da83bb8b348dc152fd54900044198e69cbff"
        ),
        .binaryTarget(
            name: "AcuantPassiveLiveness",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/AcuantPassiveLiveness.xcframework.zip",
            checksum: "7026f2829897b1c4a93b0f3e7c1bcf6527c3f987dc733296b41fc0258acd943e"
        ),
        .binaryTarget(
            name: "ScanForensicsPlus",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/ScanForensicsPlus.xcframework.zip",
            checksum: "647f4ec336c19096a1ce0efe9c49c5921048b534b655b879a12eacf309478280"
        ),
        .binaryTarget(
            name: "TesseractOCR",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/TesseractOCR.xcframework.zip",
            checksum: "800763ff40c50b06a740a03b6e1464cda6108c54a8cd2abd9cbaea02de8783c8"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/raw/v5.0/Sources/VisaSensoryBranding.xcframework.zip",
            checksum: "7f99f22c6433a22c443a3c0f37963218461ad68379b4d64a762c1f52b027659b"
        )
    ]
)

