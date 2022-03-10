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
        .library(name: "JWTDecode",
                 targets: ["JWTDecode"]),
        .library(name: "Kingfisher",
                 targets: ["Kingfisher"]),
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
        .binaryTarget(name: "Apollo",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Apollo-X13-0.48.0.xcframework.zip",
                      checksum: "011baf17003e459a4ed4f30f9acc33a03f1a61a9bb8f2a1fdf998e210f26ef52"),
        .binaryTarget(name: "ApolloAPI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloAPI-X13-0.48.0.xcframework.zip",
                      checksum: "3055cb17f384e13e43734327dbc4817c4aa5d6198bb738fbd1404e03d22717d7"),
        .binaryTarget(name: "ApolloUtils",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloUtils-X13-0.48.0.xcframework.zip",
                      checksum: "d60653e6c6d134fc908985ab5b6d13225c11c4eda7b01160066c053e6b53c7ad"),
        .binaryTarget(name: "JWTDecode",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/JWTDecode-X13-2.6.3.xcframework.zip",
                      checksum: "2ff008d8fc8eeac7344c0277f86871821f7ed15a5c4a92f59b545e83b3691c48"),
        .binaryTarget(name: "Kingfisher",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Kingfisher-X13-7.1.1.xcframework.zip",
                      checksum: "a296fbc023253fec03ae947fc10e30bd6d6a0c749e5da1ae8f9cb9a2f2240f68"),
        .binaryTarget(name: "NotarizeCV",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-2.3.0.xcframework.zip",
                      checksum: "e00b34419cda3aec6ff737f549f3db8d96c93b1bb5f30277bbd18d53c48cc2d2"),
        .binaryTarget(name: "PSPDFKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKit-11.1.1.xcframework.zip",
                      checksum: "af3eb04adb6302255bac4923dc158741acfb6dac8ad6df3dbfb2fa06c4febc22"),
        .binaryTarget(name: "PSPDFKitUI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/PSPDFKitUI-11.1.1.xcframework.zip",
                      checksum: "461c65134bf497705b965cde40a639efec4ad94584bd58659cb89413c1c51823"),
        .binaryTarget(name: "Reachability",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Reachability-X13-4.3.1.xcframework.zip",
                      checksum: "5e13fd727e8e105ef84e3d9f8954ad4c142dba9a3db3dff1478cec0d179a7c07"),
        .binaryTarget(name: "RxSwift",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift-X13-6.2.0.xcframework.zip",
                      checksum: "16a2d40a174df6f4881a2aca89f3190782e5a4ec273737a83c73d7e28be83e0d"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay-X13-6.2.0.xcframework.zip",
                      checksum: "b132e0a53843c5c74972f0264b5c60ed4e7eaf12f3c3993b28c5efd839bd7d97"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa-X13-6.2.0.xcframework.zip",
                      checksum: "43c20effe0c0f37ac5e08340841a8e000a77ac61637bc26212d19568998f18ae"),
        .binaryTarget(name: "Segment",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Segment-X13-4.5.1.xcframework.zip",
                      checksum: "c1eda61f4c7dbe5cbe6b5fce72488f21538e7c25d66f734fc50c7907ef8f5a26"),
        .binaryTarget(name: "Sentry",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Sentry-7.8.0.xcframework.zip",
                      checksum: "8291184448cc75075fb6829e5212bd6ffbeb12107ed82b9bc00df30a8b5d9b55"),
        .binaryTarget(name: "SnapKit",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/SnapKit-X13-5.0.1.xcframework.zip",
                      checksum: "213547b927d4fc0dcfa84e175f50d69bcf6a216d5162c0d4a24eee71a4980e21"),
        .binaryTarget(name: "Starscream",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Starscream-X13-3.1.0.xcframework.zip",
                      checksum: "5b483ceefa875202c9c399e587f6eed692cef75d5ae81c2b42f764c1854353cf"),
        .binaryTarget(name: "Swinject",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Swinject-X13-2.7.1.xcframework.zip",
                      checksum: "b30f52c1869f88ee77b777c4439ceec27e5901c84e131641159326f3ebdc4e9d"),
        .binaryTarget(name: "TwilioVideo",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/TwilioVideo-X13-4.6.0.xcframework.zip",
                      checksum: "d571ea5030bb16d25eef83e5c9cbe5057bdc4408ffbbf191c9d6786fca488acc"),
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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCV-2.5.0.xcframework.zip",
                      checksum: "67d3ca858e0d808dffafe4ff169527c5db20eeab409e2eb361ef45e816cb852f"),
        .binaryTarget(name: "opencv2",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/opencv2-4.5.4.xcframework.zip",
                      checksum: "4dc73197aec00c85667a18bb02c20b476ee1e6b16705cc28f56ce7a22d44446e")
    ]
)
