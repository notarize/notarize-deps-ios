// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizeDeps",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Apollo",
                 targets: ["Apollo"]),
        .library(name: "ApolloAPI",
                 targets: ["ApolloAPI"]),
        .library(name: "ApolloUtils",
                 targets: ["ApolloUtils"]),
        .library(name: "DeviceKit",
                 targets: ["DeviceKit"]),
        .library(name: "JWTDecode",
                 targets: ["JWTDecode"]),
        .library(name: "Kingfisher",
                 targets: ["Kingfisher"]),
        .library(name: "NotarizeCV",
                 targets: ["NotarizeCV"]),
        .library(name: "PSPDFKit",
                 targets: ["PSPDFKit", "PSPDFKitUI"]),
        .library(name: "Reachability",
                 targets: ["Reachability"]),
        .library(name: "RxSwift",
                 targets: ["RxSwift", "RxRelay", "RxCocoa"]),
        .library(name: "Segment",
                 targets: ["Segment"]),
        .library(name: "Sentry",
                 targets: ["Sentry"]),
        .library(name: "SnapKit",
                 targets: ["SnapKit"]),
        .library(name: "Starscream",
                 targets: ["Starscream"]),
        .library(name: "Swinject",
                 targets: ["Swinject"]),
        .library(name: "TwilioVideo",
                 targets: ["TwilioVideo"]),
        
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Apollo",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Apollo-0.48.0.xcframework.zip",
                      checksum: "0c212dbdca6af6c4822e95503c418a395df53a99db8230f3262ea21bd4b9661d"),
        .binaryTarget(name: "ApolloAPI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloAPI-0.48.0.xcframework.zip",
                      checksum: "2d4df03f90fe5f0b1a07b57215904fbe809a2381f020624ecac3eda45d71c776"),
        .binaryTarget(name: "ApolloUtils",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloUtils-0.48.0.xcframework.zip",
                      checksum: "c2facc9ac64260ffff97c32053e3cdc61c3fd9df5cab02ac3e03b90f5f366e4a"),
        .binaryTarget(name: "DeviceKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/DeviceKit-4.5.0.xcframework.zip",
                      checksum: "07ad13c43834915866c1702b9c7c8bacfa40069a582d3b6a4bf706c4744bb371"),
        .binaryTarget(name: "JWTDecode",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/JWTDecode-2.6.3.xcframework.zip",
                      checksum: "21be04935af0b60e36fc050e5867960d9a9e652496f1a23709fbeb6bba144c3f"),
        .binaryTarget(name: "Kingfisher",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Kingfisher-5.15.8.xcframework.zip",
                      checksum: "805eb5bff0cdd12da87d30fbb3f6955a7dec3cf9c3a9861cdb388ea57caa6868"),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-1.15.0.xcframework.zip",
                      checksum: "363a2573e5e9cbe6370ebfe8505e6893bdb2ae47265ce44d458bbb5d3950a45b"),
        .binaryTarget(name: "PSPDFKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKit-10.5.1.xcframework.zip",
                      checksum: "7f719a514af1e33a5ba2c903ed00320a7b33ef1604acfc75aab36dab30fe7a64"),
        .binaryTarget(name: "PSPDFKitUI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKitUI-10.5.1.xcframework.zip",
                      checksum: "5062e53ed27086cbc899e4a2f7c7ed9016e819b3bb5997b0320ab6cd6faef721"),
        .binaryTarget(name: "Reachability",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Reachability-4.3.1.xcframework.zip",
                      checksum: "addfb31029ab2529062b421e6c34da599cca041c6aae0ed6062f773c4c88333b"),
        .binaryTarget(name: "RxSwift",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift-6.2.0.xcframework.zip",
                      checksum: "012d45efc8c45b1abc42b59f4cb597f46f4c69c2a6780ca0ecd875bb8aa887b0"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay-6.2.0.xcframework.zip",
                      checksum: "284b93046ac8bd46bb8006b6185237ad8737ec7e04ef3f38b9227bd0d94b9ecf"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa-6.2.0.xcframework.zip",
                      checksum: "3a4eab625ca9c359772935d010bf5ba82ce954f3a1cb38c69c46fe801e05f766"),
        .binaryTarget(name: "Segment",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Segment-4.5.1.xcframework.zip",
                      checksum: "5abf3c6a0bee36c53c0c690eec8d1401dc6aafa25d64e4990cc7f3b3a57d4387"),
        .binaryTarget(name: "Sentry",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Sentry-7.4.4.xcframework.zip",
                      checksum: "0fd283eae5d725c5060d097cfbb66ea0185f861a2d8df42cbd8ef3175e819259"),
        .binaryTarget(name: "SnapKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/SnapKit-5.0.1.xcframework.zip",
                      checksum: "e7711ddf4e1fe0c00a2c1b9b77e61ab3a4d659e77ce80539d7e094e3ed4abac7"),
        .binaryTarget(name: "Starscream",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Starscream-3.1.0.xcframework.zip",
                      checksum: "1d2f0f9d1be8682c4170d58beaee9926f7fb8d6cd60129cafab269c68c9f2bdd"),
        .binaryTarget(name: "Swinject",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Swinject-2.7.1.xcframework.zip",
                      checksum: "00b7087b09b82a99f4d2eb3a15d5dfd38352b6a5e18f90a79ed8c0365dc66324"),
        .binaryTarget(name: "TwilioVideo",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/TwilioVideo-4.6.0.xcframework.zip",
                      checksum: "fa76f6d33ab778ee3b01f4ea493eb5df774c63ec1b32608630dac352f09bc01f"),
    ]
)
