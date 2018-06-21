# SchemeKit
SchemeKit is a simple API to provide url query schemes for launching third party applications.
<p>
<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/language-swift4-f48041.svg?style=flat"></a>
<a href="https://developer.apple.com/ios"><img src="https://img.shields.io/badge/platform-iOS%2011-blue.svg?style=flat"></a>
<a href="https://github.com/chickdan/SchemeKit/blob/master/LICENSE"><img src="http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat"></a>
</p>

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

NOTE: Be sure to add schemes you plan to use in your app's `info.plist`
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



