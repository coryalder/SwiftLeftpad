
# SwiftLeftpad

## Installation

### Swift Package Manager

Add SwiftLeftpad to your `Package.swift` file:

    import PackageDescription

    let package = Package(
        name: "YourPackageName",
        dependencies: [
            .Package(url: "https://github.com/coryalder/SwiftLeftpad.git", majorVersion: 0),
        ]
    )

## Usage

    import SwiftLeftpad
    
    print("testing 123".leftpad(20))
    // => "        testing 123"
    
    print(" winner".leftpad(20, character: "#"))
    // => "############# winner"

By default, SwiftLeftpad will use a single space as the padding character, but you can supply your own.



