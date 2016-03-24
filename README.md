
# SwiftLeftpad

A lot of people have interpreted the recent npm [kerfuffle aruond kik, and left-pad](http://blog.npmjs.org/post/141577284765/kik-left-pad-and-npm) as saying everyone should have written their own leftpad function, instead of relying on a 3rd party dependency. It is only 11 lines of code (in js). I have a different view. One of the things we teach beginners is Do not Repeat Yourself. We tell them if they write the code once, and call it from wherever it's needed, we have only one place where we need to fix our bugs. No big of code is simple enough to be gauranteed bug free, and centralizing functions, like leftpad, means we only have to debug them once.

The reality is, in the absence of a left-pad module, most people will go to Stack Overflow, search "left pad string swift" and copy-paste the first high-voted answer they find. Now, SO is a good tool, and if I find a bug in the implementation there I can fix it, but that change doesn't propagate out to everybody who's copied it into their "utils" library.

With all that in mind, I created a Swift version of left-pad, which I hope you'll consider using if you have this problem. It's currently only available using Swift Package Manager, but pull requests for CocoaPods and Carthage will be considered. This is also a *direct* port of the npm version of left-pad, and has some of the same bugs and inefficiencies as the source. Pull requests welcome, let's fix it once and never again.

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



