# BTCheckout

[![CI Status](https://img.shields.io/travis/jsmellz/BTCheckout.svg?style=flat)](https://travis-ci.org/jsmellz/BTCheckout)
[![Version](https://img.shields.io/cocoapods/v/BTCheckout.svg?style=flat)](https://cocoapods.org/pods/BTCheckout)
[![License](https://img.shields.io/cocoapods/l/BTCheckout.svg?style=flat)](https://cocoapods.org/pods/BTCheckout)
[![Platform](https://img.shields.io/cocoapods/p/BTCheckout.svg?style=flat)](https://cocoapods.org/pods/BTCheckout)
## Description

The purpose of this pod is to take a ticket object from a POS, map it onto a url as query parameters, and then deep link with this url to the Bartab app. However, this cocoa pod is at a very early stage of development. It works in the most basic sense and this example gets the point across as to what it takes to integrate the Bartab checkout method into any POS. That being said there will be testing and refactoring in the near future. 

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Assumptions

This pod makes two assumptions about the architecture of the POS application.

1. A ticket on the POS application is represented in some sort of object either as a class or struct. 
2. The representation of items within the ticket object is as an array of objects. 

## Installation

BTCheckout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BTCheckout'
```

add the bartab app url scheme by adding this to info.plist

```
<key>CFBundleURLTypes</key>
    <array>
        <dict>
            <key>CFBundleURLSchemes</key>
                <array>
                    <string>bartab</string>
                </array>
            <key>CFBundleURLName</key>
                <string>bartab</string>
        </dict>
    </array>
```
see example f

## Author

jsmellz

## License

BTCheckout is available under the MIT license. See the LICENSE file for more info.
