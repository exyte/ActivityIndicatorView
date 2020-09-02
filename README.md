<img src="https://github.com/exyte/ActivityIndicatorView/blob/master/Assets/header.png">
<img align="right" src="https://raw.githubusercontent.com/exyte/ActivityIndicatorView/master/Assets/demo.gif" width="480" />

<p><h1 align="left">ActivityIndicatorView</h1></p>

<p><h4>A number of preset loading indicators created with SwiftUI</h4></p>

___

<p> We are a development agency building
  <a href="https://clutch.co/profile/exyte#review-731233">phenomenal</a> apps.</p>

</br>

<a href="https://exyte.com/contacts"><img src="https://i.imgur.com/vGjsQPt.png" width="134" height="34"></a> <a href="https://twitter.com/exyteHQ"><img src="https://i.imgur.com/DngwSn1.png" width="165" height="34"></a>

</br></br>
[![Travis CI](https://travis-ci.org/exyte/ActivityIndicatorView.svg?branch=master)](https://travis-ci.org/exyte/ActivityIndicatorView)
[![Version](https://img.shields.io/cocoapods/v/ActivityIndicatorView.svg?style=flat)](http://cocoapods.org/pods/ActivityIndicatorView)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-0473B3.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/ActivityIndicatorView.svg?style=flat)](http://cocoapods.org/pods/ActivityIndicatorView)
[![Platform](https://img.shields.io/cocoapods/p/ActivityIndicatorView.svg?style=flat)](http://cocoapods.org/pods/ActivityIndicatorView)
[![Twitter](https://img.shields.io/badge/Twitter-@exyteHQ-blue.svg?style=flat)](http://twitter.com/exyteHQ)

# Usage

Create an indicator like this:
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default)
   ```
   where  
   `showLoadingIndicator` - bool value you may change to display or hide the indicator  
   `type` - value from `ActivityIndicatorView.IndicatorType` enum  

You may alter it with standard SwiftUI means like this: 
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default)
        .frame(width: 50.0, height: 50.0)
        .foregroundColor(.red)
   ```

### Indicator types
`default` - iOS UIActivityIndicator style  
`arcs`  
`rotatingDots`  
`flickeringDots`  
`scalingDots`  
`opacityDots`  
`equalizer`  
`growingArc` - add custom color for growing Arc, the default value is `Color.red`
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .growingArc(.red))
       .frame(width: 50.0, height: 50.0)
   ```
`growingCircle`  
`gradient` - circle with angular gradient border stroke, pass colors ilke this:
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .gradient([.white, .red]))
       .frame(width: 50.0, height: 50.0)
   ```

## Examples

To try out the ActivityIndicatorView examples:
- Clone the repo `git clone git@github.com:exyte/ActivityIndicatorView.git`
- Open terminal and run `cd <ActivityIndicatorViewRepo>/Example`
- Run `pod install` to install all dependencies
- Run `xed .` to open project in the Xcode
- Try it!

## Installation

### CocoaPods

```ruby
pod 'ActivityIndicatorView'
```

### Carthage

```ogdl
github "Exyte/ActivityIndicatorView"
```

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/exyte/ActivityIndicatorView.git", from: "0.0.1")
]
```

### Manually

Drop [ActivityIndicatorView.swift](https://github.com/exyte/ActivityIndicatorView/blob/master/Source/ActivityIndicatorView.swift) into your project.

## Requirements

* iOS 13+ / watchOS 13+ / tvOS 13+ / macOS 10.15+
* Xcode 11+
