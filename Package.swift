// swift-tools-version:5.0
//
// Use command "swift package generate-xcodeproj --xcconfig-overrides ./Sources/ios.xcconfig" to generate for iOS
//
import PackageDescription

let package = Package(
    name: "TwilioAccessToken",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "TwilioAccessToken", targets: ["TwilioAccessToken"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/bytethenoodle/JSONWebToken.swift", .branch("bytethenoodle/iOS"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TwilioAccessToken",
            dependencies: ["JWT"])
    ]
)
