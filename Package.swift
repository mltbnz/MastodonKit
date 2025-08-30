// swift-tools-version:5.8

import PackageDescription

// swiftlint:disable prefixed_toplevel_constant

let package = Package(
    name: "MastodonKit",
    platforms: [
      .iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9)
    ],
    products: [
        .library(name: "MastodonKit", targets: ["MastodonKit"])
    ],
    dependencies: [
      .package(
        url: "https://github.com/scinfu/SwiftSoup.git",
        from: "2.8.8"
      ),
    ],
    targets: [
      .target(
        name: "MastodonKit",
        dependencies: [
          .product(name: "SwiftSoup", package: "SwiftSoup")
        ]
      ),
        .testTarget(name: "MastodonKitTests", dependencies: ["MastodonKit"])
    ]
)
