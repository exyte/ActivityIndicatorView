// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "ActivityIndicatorView",
	platforms: [
		.macOS(.v12),
        .iOS(.v15),
        .watchOS(.v8),
        .tvOS(.v15)
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
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        )
    ]
)
