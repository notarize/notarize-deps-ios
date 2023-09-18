// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizeDeps",
    platforms: [
        .iOS(.v15)
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
        .package(url: "https://github.com/apollographql/apollo-ios", exact: "1.5.0"),
        .package(url: "https://github.com/devicekit/DeviceKit", exact: "5.0.0"),
        .package(url: "https://github.com/auth0/JWTDecode.swift", exact: "3.1.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", exact: "7.9.1"),
        .package(url: "https://github.com/ashleymills/Reachability.swift", exact: "5.1.0"),
        .package(url: "https://github.com/segmentio/analytics-ios", exact: "4.1.8"),
        .package(url: "https://github.com/getsentry/sentry-cocoa", exact: "8.8.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", exact: "5.6.0"),
        .package(url: "https://github.com/daltoniam/Starscream", exact: "3.1.0"),
        .package(url: "https://github.com/Swinject/Swinject", exact: "2.8.3"),
        .package(url: "https://github.com/twilio/twilio-video-ios", exact: "5.7.0"),
        .package(url: "https://github.com/twilio/conversations-ios", exact: "4.0.2"),
        .package(url: "https://github.com/PSPDFKit/PSPDFKit-SP", exact: "12.3.0"),
        .package(url: "https://github.com/persona-id/inquiry-ios-2", exact: "2.12.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "NotarizeDeps",
                dependencies: [
                    .product(name: "Apollo", package: "apollo-ios"),
                    .product(name: "DeviceKit", package: "DeviceKit"),
                    .product(name: "JWTDecode", package: "JWTDecode.swift"),
                    .product(name: "Kingfisher", package: "Kingfisher"),
                    .product(name: "Reachability", package: "Reachability.swift"),
                    .product(name: "Segment", package: "analytics-ios"),
                    .product(name: "Sentry", package: "Sentry-cocoa"),
                    "SnapKit",
                    "Starscream",
                    "Swinject",
                    .product(name: "TwilioVideo", package: "twilio-video-ios"),
                    .product(name: "TwilioConversationsClient", package: "conversations-ios"),
                    .product(name: "PSPDFKit", package: "PSPDFKit-SP"),
                    .product(name: "PersonaInquirySDK2", package: "inquiry-ios-2")
                ]),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-2.9.1.xcframework.zip",
                      checksum: "1cce6279d4ad5e348bd77ab96b0a780ced4a7ecb806a6adee70494585ed2455a"),
        .binaryTarget(name: "opencv2",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/opencv2-4.5.4.xcframework.zip",
                      checksum: "4dc73197aec00c85667a18bb02c20b476ee1e6b16705cc28f56ce7a22d44446e"),
    ]
)
