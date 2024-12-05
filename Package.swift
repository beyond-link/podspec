// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://beyondlink.s3.eu-north-1.amazonaws.com/beyondLinkSDK-0.3.1-a23d439d-39bf-47b3-824b-46033f6f5f3a.xcframework.zip"
let remoteKotlinChecksum = "83b2906880e8ccf17e227bb4cff9f333b177dba567037dfe75d7ae155e9e05e6"
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