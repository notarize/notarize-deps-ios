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
        .package(name: "PSPDFKit", url: "https://github.com/PSPDFKit/PSPDFKit-SP", .exact("11.1.1")),
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
                 .exact("4.6.0"))
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
                    .product(name: "PSPDFKit", package: "PSPDFKit"),
                    .product(name: "Reachability", package: "Reachability"),
                    .product(name: "Segment", package: "Segment"),
                    .product(name: "Sentry", package: "Sentry"),
                    "SnapKit",
                    "Starscream",
                    "Swinject",
                    .product(name: "TwilioVideo", package: "TwilioVideo"),
                ]),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-2.3.0.xcframework.zip",
                      checksum: "e00b34419cda3aec6ff737f549f3db8d96c93b1bb5f30277bbd18d53c48cc2d2"),
        .binaryTarget(name: "opencv2",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/opencv2-4.5.4.xcframework.zip",
                      checksum: "4dc73197aec00c85667a18bb02c20b476ee1e6b16705cc28f56ce7a22d44446e")
    ]
)
