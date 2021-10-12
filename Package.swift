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
        .library(
            name: "NotarizeDeps",
            type: .dynamic,
            targets: ["NotarizeDeps"]),
        .library(name: "NotarizeCV", targets: ["NotarizeCV"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0")),
        .package(name: "Apollo",
                 url: "https://github.com/apollographql/apollo-ios",
                 .exact("0.48.0")),
        .package(url: "https://github.com/devicekit/DeviceKit", .exact("4.3.0")),
        .package(
            name: "Reachability",
            url: "https://github.com/ashleymills/Reachability.swift",
            .exact("4.3.1")),
        .package(url: "https://github.com/SnapKit/SnapKit", .exact("5.0.1")),
        .package(url: "https://github.com/Swinject/Swinject", .exact("2.7.1")),
        .package(url: "https://github.com/onevcat/Kingfisher", .exact("5.15.8")),
        .package(
            name: "Sentry",
            url: "https://github.com/getsentry/sentry-cocoa",
            .exact("7.4.3")),
        .package(name: "Segment",
                 url: "https://github.com/segmentio/analytics-ios",
                 .exact("4.1.5")),
        .package(
            name: "JWTDecode",
            url: "https://github.com/auth0/JWTDecode.swift",
            .exact("2.6.0")),
        .package(
            name: "PSPDFKit",
            url: "https://github.com/PSPDFKit/PSPDFKit-SP", .exact("10.5.1")),
        .package(url: "https://github.com/daltoniam/Starscream", .exact("3.1.1")),
        .package(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios",
            .exact("4.6.0"))
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NotarizeDeps",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                .product(name: "Apollo", package: "Apollo"),
                .product(name: "ApolloAPI", package: "Apollo"),
                .product(name: "ApolloUtils", package: "Apollo"),
                "DeviceKit",
                .product(name: "Reachability", package: "Reachability"),
                "SnapKit",
                "Swinject",
                "Kingfisher",
                .product(name: "Segment", package: "Segment"),
                .product(name: "Sentry", package: "Sentry"),
                "JWTDecode",
                .product(name: "PSPDFKit", package: "PSPDFKit"),
                "Starscream",
                "TwilioVideo",
                "NotarizeCV"
            ]),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-1.15.0.xcframework.zip",
                      checksum: "0cca694a9fdb5c2c68127b72dfa1957e084d9f72b7e82e778875bcf89844c9e7")
    ]
)
