// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
 PackageDescription

 = 
  name: "cgtcalc",
  products: [
    .library(name: "CGTCalcCore", targets: ["CGTCalcCore"]),
    .executable(name: "cgtcalc", targets: ["cgtcalc"])
  ],
  dependencies: [
    .package(url: "", .upToNextMinor(from: "1.1.0"))
  ],
  targets: [
    .target(
      name: "CGTCalcCore"),
    .target(
      name: "cgtcalc",
      dependencies: [
        "CGTCalcCore",
        .product(name: "ArgumentParser", package: "swift-argument-parser")
      ]),
    .testTarget(
      name: "CGTCalcCoreTests",
      dependencies: ["CGTCalcCore"])
  ])
