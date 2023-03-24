// swift-tools-version:5.5

import PackageDescription

let headersSearchPath: [CSetting] = [
    .headerSearchPath("."),
    .headerSearchPath("Base"),
    .headerSearchPath("Debug"),
    .headerSearchPath("Details"),
    .headerSearchPath("Details/Transactions"),
    .headerSearchPath("Layout"),
    .headerSearchPath("Private"),
    .headerSearchPath("Private/Layout"),
    .headerSearchPath("TextExperiment/Component"),
    .headerSearchPath("TextExperiment/String"),
    .headerSearchPath("TextExperiment/Utility"),
    .headerSearchPath("TextKit"),
    .headerSearchPath("tvOS"),
]

let sharedDefines: [CSetting] = [
            // Disable "old" textnode by default for SPM
            .define("AS_ENABLE_TEXTNODE", to: "1"),
        
        // PINRemoteImage always available for Texture
        .define("AS_PIN_REMOTE_IMAGE", to: "1"),
        
        // always disabled
        .define("IG_LIST_COLLECTION_VIEW", to: "0"),
    ]

func IGListKit(enabled: Bool, diffOnly: Bool) -> [CSetting] {
    [
        .define("AS_IG_LIST_KIT", to: enabled && !diffOnly ? "1" : "0"),
        .define("AS_IG_LIST_DIFF_KIT", to: enabled ? "1" : "0"),
    ]
}


let package = Package(
    name: "Texture",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v10),
        .tvOS(.v10),
    ],
    products: [
        .library(
            name: "AsyncDisplayKit",
            type: .static,
            targets: [
                "AsyncDisplayKit",
            ]
        ),
        .library(
            name: "AsyncDisplayKitIGListKit",
            type: .static,
            targets: [
                "AsyncDisplayKitIGListKit",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", branch: "master"),
        .package(url: "https://github.com/Instagram/IGListKit.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "AsyncDisplayKit",
            dependencies: [
                .product(name: "IGListDiffKit", package: "IGListKit"),
                "PINRemoteImage",
            ],
            path: "spm/Sources/AsyncDisplayKit",
            cSettings: headersSearchPath + sharedDefines + IGListKit(enabled: true, diffOnly: true),
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMedia"),
            ]
        ),
        .target(
            name: "AsyncDisplayKitIGListKit",
            dependencies: [
                .product(name: "IGListKit", package: "IGListKit"),
                .product(name: "IGListDiffKit", package: "IGListKit"),
                "PINRemoteImage",
            ],
            path: "spm/Sources/AsyncDisplayKitIGListKit/AsyncDisplayKit",
            cSettings: headersSearchPath + sharedDefines + IGListKit(enabled: true, diffOnly: false),
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMedia"),
            ]
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx11
)

for target in package.targets {
    var settings = target.cSettings ?? []
    
    settings.append(
        contentsOf: [
            .define("TARGET_OS_MACOS", to: "1", .when(platforms: [.macOS])),
            .define("TARGET_OS_IOS", to: "1", .when(platforms: [.iOS])),
            .define("TARGET_OS_TVOS", to: "1", .when(platforms: [.tvOS]))
        ]
    )
    
    target.cSettings = settings
}
