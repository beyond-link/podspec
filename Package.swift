// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://beyondlink.s3.eu-north-1.amazonaws.com/beyondlinksdk-0.3.0-81aa3cb7-77a2-493e-9289-ecb6cd873b56.xcframework.zip"
let remoteKotlinChecksum = "3146342178fbf1492baf92413db6461399a0bdbe02798473a51d2f711406bd8e"
let packageName = "beyondlinksdk"
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