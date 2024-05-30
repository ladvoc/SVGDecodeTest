// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SVGDecodeTest",
    platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", from: "1.7.0"),
        .package(url: "https://github.com/dreampiggy/SDWebImage.git", branch: "bugfix/sd_svg_macos")
    ],
    targets: [
        .executableTarget(
            name: "SVGDecodeTest",
            dependencies: [
                .product(name: "SDWebImageSVGCoder", package: "SDWebImageSVGCoder"),
                .product(name: "SDWebImage", package: "SDWebImage")
            ],
            resources: [.copy("flag.svg")]
        )
    ]
)
