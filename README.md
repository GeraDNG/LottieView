# LottieView
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)[![Platform](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-ios%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/airbnb/lottie-ios) [![Swift Versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fairbnb%2Flottie-ios%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/airbnb/lottie-ios)

## About LottieView
This package contains the necessary to create a SwiftUI view in which an animation will be displayed with the help of the [Lottie iOS library](https://github.com/airbnb/lottie-ios).

![Example2](https://github.com/airbnb/lottie-ios/blob/master/_Gifs/Examples2.gif)

## Requirements
Deployment target: iOS 13.

## Installing LottieView
### Swift Package Manager
To install LottieView using Swift Package Manager you can follow the tutorial published by Apple using the URL for the LottieView repo with the current version:
1. In Xcode, select “File” → “Swift Packages” → “Add Package Dependency”.
2. Enter https://github.com/GeraDNG/LottieView.

You can also add LottieView as a dependency to your `Package.swift`:
```swift
dependencies: [
  .package(url: "https://github.com/GeraDNG/LottieView", from: "1.0.0")
]
```


## Usign LottieView
First, you need to download an animation. You can find a lot at: https://lottiefiles.com. After that, you need to add the file to your Xcode project.
To display this animation in your SwiftUI view, you need to import this library, by adding:
```swift
import LottieView
```
An entity of type `LottieData` must be created, which contains the necessary configuration parameters, but only the file name is required. You can configure parameters like:
* `fileName`: name of the file (Lottie animation).
* `speed`: speed of the animation. Default value is `1.0`.
* `loop`: Defines animation loop behavior. Default value is `.loop`.
* `startProgress`: The start progress of the animation. Default value is `0.0`.
* `endProgress`: The end progress of the animation. Default value is `1.0`.
* `backgroundBehavior`: Describes the behavior of an AnimationView when the app is moved to the background. Default value is `.pauseAndRestore`.
* `completion`: An optional completion closure (`(Bool) -> Void`) to be called when the animation stops. Default is `nil`.

So, you can use something like this to display a lottie animation in your SwiftUI view:
```swift
let lottieAnimation = LottieData(fileName: "animation.json")
LottieView(lottieData: lottieAnimation)
```
If you want to control more parameters, you can do it like this:
```swift
let lottieData = LottieData(fileName: "animation.json", speed: 0.75, loop: .playOnce, startProgress: 0.1, endProgress: 0.9, backgroundBehavior: .continuePlaying, completion: { didAnimationCompletedPlaying in
    // TODO: write your closure here
})
LottieView(lottieData: lottieData)
```

## Dependencies
These third-party SDK are used:
* [Lottie](https://github.com/airbnb/lottie-ios).

## Data collection
The Lottie and LottieView SDK does not collect any data. We provide this notice to help you fill out [App Privacy Details](https://developer.apple.com/app-store/app-privacy-details/).


