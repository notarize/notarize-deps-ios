// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizeDeps",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NotarizeDeps",
            type: .dynamic,
            targets: ["NotarizeDeps"]),
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
            .exact("4.5.0")),
        .package(name: "Segment",
                 url: "https://github.com/segmentio/analytics-ios",
                 .exact("4.1.5"))
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
                .product(name: "Sentry", package: "Sentry")
            ]),
    ]
)
