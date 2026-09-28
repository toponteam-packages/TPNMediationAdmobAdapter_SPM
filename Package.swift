// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationAdmobAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationAdmobAdapter",
            targets: ["TPNMediationAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.7.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkAdmobAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkAdmobAdapter/13.7.0.2.0/AnyThinkAdmobAdapter-13.7.0.2.0.zip",
            checksum: "d2625504fc0306f68c638a074d63f7b7eb99400dbf8b5da4ea7792fd36bd138d"
        ),
        .target(
            name: "TPNMediationAdmobAdapterTarget",
            dependencies: [
                "AnyThinkAdmobAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/TPNMediationAdmobAdapterTarget"
        )
    ]
)
