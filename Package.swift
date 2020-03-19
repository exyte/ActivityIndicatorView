// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "ActivityIndicatorView",
	platforms: [
		.macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6)
    ],
    products: [
    	.library(
    		name: "ActivityIndicatorView", 
    		targets: ["ActivityIndicatorView"]
    	)
    ],
    targets: [
    	.target(
    		name: "ActivityIndicatorView",
            path: "Source"
        )
    ],
    swiftLanguageVersions: [.v5]
)
