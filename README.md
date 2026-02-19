> [!WARNING]
> With the ability to set default browsers as of iOS 14 I no longer believe this is a helpful project. It will be archived but remain available for historical purposes.

# SchemeKit
SchemeKit is a simple API to provide url query schemes for launching third party applications.

[![GitHub License](http://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://github.com/chickdan/SchemeKit/blob/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Language](https://img.shields.io/badge/Language-Swift_4-f48041.svg?style=flat)](https://developer.apple.com/swift)
[![Platform](https://img.shields.io/badge/Platform-iOS%2011-blue.svg?style=flat)](https://developer.apple.com/ios)

## Installation

Carthage
`github "chickdan/SchemeKit"`

## Usage

`import SchemeKit`

You can use one of the built in checkers to see if your prefered browser is installed: 
```swift
let installed = BrowserScheme.isChromeInstalled()
```

Or you can use the `BrowserNames` enum to check to see if a specific browser is installed:
```swift
let chosenBrowser = BrowserNames.chrome
let installed = BrowserScheme.isBrowserInstalled(browserName: chosenBrowser)
```

Once you know if the browser is installed, an updated url can be generated for the browser of choice:
```swift
let url = "https://www.google.com"
let chosenBrowser = BrowserNames.chrome

if BrowserScheme.isBrowserInstalled(browserName: chosenBrowser) {
    //results in a URL object with the path of: "googlechromes://www.google.com"
    let chromeUrl = BrowserScheme.getUrlForBrowser(urlToConvert: url, browserName: chosenBrowser)
}
```

**NOTE:** Be sure to add schemes you plan to use in your app's `info.plist`
```plist
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>googlechrome</string>
    <string>firefox</string>
    <string>microsoft-edge</string>
    <string>opera</string>
    <string>dolphin</string>
    <string>brave</string>
</array>
```

## Contribution

### Issue
If you find a bug or need a help, you can [create an issue](https://github.com/chickdan/SchemeKit/issues/new)


### Pull Request
We are happy to accept pull requests!



