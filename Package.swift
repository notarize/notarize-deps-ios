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
        .library(name: "NotarizeDeps",
                 type: .dynamic,
                 targets: ["NotarizeDeps"]),
        .library(name: "NotarizeCV",
                         targets: ["NotarizeCV"]),
        .library(name: "opencv2",
                         targets: ["opencv2"])
    ],
    dependencies: [
        .package(name: "Apollo", url: "https://github.com/apollographql/apollo-ios", .exact("0.48.0")),
        .package(name: "JWTDecode",
                 url: "https://github.com/auth0/JWTDecode.swift", .exact("2.6.3")),
        .package(name: "Kingfisher",
                 url: "https://github.com/onevcat/Kingfisher",
                 .exact("7.1.1")),
        .package(name: "Reachability", url: "https://github.com/ashleymills/Reachability.swift", .exact("4.3.1")),
        .package(name: "Segment",
                 url: "https://github.com/segmentio/analytics-ios",
                 .exact("4.1.5")),
        .package(name: "Sentry",
                 url: "https://github.com/getsentry/sentry-cocoa", .exact("7.8.0")),
        .package(url: "https://github.com/SnapKit/SnapKit", .exact("5.0.1")),
        .package(url: "https://github.com/daltoniam/Starscream", .exact("3.1.0")),
        .package(url: "https://github.com/Swinject/Swinject", .exact("2.7.1")),
        .package(name: "TwilioVideo",
                 url: "https://github.com/twilio/twilio-video-ios",
                 .exact("4.6.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "NotarizeDeps",
                dependencies: [
                    .product(name: "Apollo", package: "Apollo"),
                    .product(name: "ApolloAPI", package: "Apollo"),
                    .product(name: "ApolloUtils", package: "Apollo"),
                    .product(name: "JWTDecode", package: "JWTDecode"),
                    .product(name: "Kingfisher", package: "Kingfisher"),
                    .product(name: "Reachability", package: "Reachability"),
                    .product(name: "Segment", package: "Segment"),
                    .product(name: "Sentry", package: "Sentry"),
                    "SnapKit",
                    "Starscream",
                    "Swinject",
                    .product(name: "TwilioVideo", package: "TwilioVideo"),
                    .target(name: "PSPDFKit"),
                    .target(name: "PSPDFKitUI")
                ]),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-2.9.1.xcframework.zip",
                      checksum: "1cce6279d4ad5e348bd77ab96b0a780ced4a7ecb806a6adee70494585ed2455a"),
        .binaryTarget(name: "opencv2",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/opencv2-4.5.4.xcframework.zip",
                      checksum: "4dc73197aec00c85667a18bb02c20b476ee1e6b16705cc28f56ce7a22d44446e"),
        .binaryTarget(name: "PSPDFKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKit-for-iOS-PSPDFKit.xcframework-11.3.1.zip",
                      checksum: "8b72c61db0497111cb5e94af2269c8e8a5a7b5935f5600d87264e1df266f0144"),
        .binaryTarget(name: "PSPDFKitUI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKit-for-iOS-PSPDFKitUI.xcframework-11.3.1.zip",
                      checksum: "d2ba1b1a01ac5a4cb36610200f8e13e671d8608608a6dcde46721e9b0ab04ab1"),
    ]
)
