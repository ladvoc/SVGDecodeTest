// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SVGDecodeTest",
    platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", from: "1.7.0")
    ],
    targets: [
        .executableTarget(
            name: "SVGDecodeTest",
            dependencies: [.product(name: "SDWebImageSVGCoder", package: "SDWebImageSVGCoder")],
            resources: [.copy("flag.svg")]
        )
    ]
)
