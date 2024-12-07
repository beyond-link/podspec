// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://beyondlink.s3.eu-north-1.amazonaws.com/beyondLinkSDK-0.4.2-ace87c8c-caa1-4894-bbc1-29c78021f7a6.xcframework.zip"
let remoteKotlinChecksum = "9f0af08be1b074c26e720fa082808a1b6f6920fc91df5aea0376f7aea209810f"
let packageName = "beyondLinkSDK"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)