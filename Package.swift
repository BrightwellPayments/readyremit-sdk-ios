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
            checksum: "b2ac3a9c0b2a1dff9b34059a255adb4271068628ab7e664a2d1cb8c79d63b63e"
        ),
        .binaryTarget(
            name: "ReadyRemitSDKLite",
            url: "https://githubURL/ReadyRemitSDK.xcframework.zip",
            checksum: "b2ac3a9c0b2a1dff9b34059a255adb4271068628ab7e664a2d1cb8c79d63b63e"
        ),
        .binaryTarget(
            name: "AcuantCamera",
            url: "https://githubURL/AcuantCamera.xcframework.zip",
            checksum: "e4edd8bdbbcaa60108dc34cb7d4049221387738108d62b24f5104b0ce8e0001d"
        ),
        .binaryTarget(
            name: "AcuantCommon",
            url: "https://githubURL/AcuantCommon.xcframework.zip",
            checksum: "67d7caa56fb14b42bc2220371366564a14f69737b816b140217bd1f301869f4e"
        ),
        .binaryTarget(
            name: "AcuantFaceCapture",
            url: "https://githubURL/AcuantFaceCapture.xcframework.zip",
            checksum: "72f112c678f6bcdf2769d0dde8f29c8f630a91d8c50bdedeeacb5b600f0e641d"
        ),
        .binaryTarget(
            name: "AcuantImagePreparation",
            url: "https://githubURL/AcuantImagePreparation.xcframework.zip",
            checksum: "b90f5f12a26f244b73acdacfe6b55348826d17ebd0004452a37013aeb01ab8d9"
        ),
        .binaryTarget(
            name: "AcuantPassiveLiveness",
            url: "https://githubURL/AcuantPassiveLiveness.xcframework.zip",
            checksum: "aa18237e580c094132d6950aa0879cf87eeef8e88fcd0b6f0ef4c7bd0b4daafe"
        ),
        .binaryTarget(
            name: "ScanForensicsPlus",
            url: "https://githubURL/ScanForensicsPlus.xcframework.zip",
            checksum: "5cc20a0c58100772f4fab6cb7c4a068cda3dfe5efc4ffde6ffdc250de52e47a8"
        ),
        .binaryTarget(
            name: "TesseractOCR",
            url: "https://githubURL/TesseractOCR.xcframework.zip",
            checksum: "49d75e826a1346924bc9bbb579470382399e525e610ac5eece78fb63e1883f3f"
        ),
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://githubURL/VisaSensoryBranding.xcframework.zip",
            checksum: "056ee1189d6a3b26c33973eae2328a13ad1e6f2511223dc6f6863f17fb8d953a"
        )
    ]
)

