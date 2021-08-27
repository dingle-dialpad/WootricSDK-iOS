// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "WootricSDK",
  // platforms: [.iOS("8.0"), .macOS("10.10"), .tvOS("9.0"), .watchOS("2.0")],
  products: [
    .library(name: "WootricSDK", targets: ["WootricSDK"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "WootricSDK",
      path: "WootricSDK/WootricSDK",
      exclude: ["Info.plist"],
      resources: [
        .process("fontawesome-webfont.ttf"),
        .process("IBMPlexSans-Bold.ttf"),
        .process("IBMPlexSans-Italic.ttf"),
        .process("IBMPlexSans-Medium.ttf"),
        .process("IBMPlexSans-Regular.ttf")
      ],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("."),
      ]
    ),

    .testTarget(
      name: "WootricSDKTests",
      dependencies: ["WootricSDK"],
      path: "WootricSDK/WootricSDKTests",
      exclude: ["Info.plist"],
      cSettings: [
        .headerSearchPath("../WootricSDK/"),
        .headerSearchPath("Mocks/")
      ]
    )

  ]
)
