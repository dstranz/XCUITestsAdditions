# XCUITestsAdditions

[![Version](https://img.shields.io/cocoapods/v/XCUITestsAdditions.svg?style=flat)](http://cocoapods.org/pods/XCUITestsAdditions)
[![License](https://img.shields.io/cocoapods/l/XCUITestsAdditions.svg?style=flat)](http://cocoapods.org/pods/XCUITestsAdditions)
[![Platform](https://img.shields.io/cocoapods/p/XCUITestsAdditions.svg?style=flat)](http://cocoapods.org/pods/XCUITestsAdditions)

XCUITestsAdditions provides simple methods that may help you in everyday work with XCode UI Tests.

## Usage

Before use import `XCTestCase+WaitingForElement.h` in your XCTestCase file.

### Waiting for UI element with 15 seconds timeout

```objective-c
XCUIElement button = app.buttons["TestButton"];
[self waitForElement:button];
```

### Waiting for UI element with custom timeout

```objective-c
XCUIElement button = app.buttons["TestButton"];
[self waitForElement:button withTimeout:60];
```

### Waiting for hittable UI element with 15 seconds timeout

```objective-c
XCUIElement button = app.buttons["TestButton"];
[self waitForElementHittable:button];
```

### Waiting for hittable UI element with custom timeout

```objective-c
XCUIElement button = app.buttons["TestButton"];
[self waitForElementHittable:button withTimeout:60];
```

## Requirements

Pod is designed to use with UI Tests (available in XCode 7)

## Installation

XCUITestsAdditions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
target "UITestTarget" do
	pod "XCUITestsAdditions"
end
```

Pod should be added only to UITests target. Replace `UITestTarget` with your target name.

## License

XCUITestsAdditions is available under the MIT license. See the LICENSE file for more info.
