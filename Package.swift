// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "xpkg-android",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "xpkg-android-xpkg-hooks", targets: ["xpkg-android-xpkg-hooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XPkgPackage", from:"1.0.5"),
    ],
    targets: [
        .target(
            name: "xpkg-android-xpkg-hooks",
            dependencies: ["XPkgPackage"]),
    ]
)
