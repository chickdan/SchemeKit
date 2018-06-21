//
//  BrowserConstants.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/20/18.
//  CopyrigFoundationht © 2018 Daniel Chick. All rights reserved.
//

struct BrowserConstants {
    static let BrowserSchemeList = [BrowserNames.chrome : BroswerURLSchemes.chrome,
                                 BrowserNames.firefox : BroswerURLSchemes.firefox,
                                 BrowserNames.opera : BroswerURLSchemes.opera,
                                 BrowserNames.dolphin : BroswerURLSchemes.dolphin,
                                 BrowserNames.brave : BroswerURLSchemes.brave,
                                 BrowserNames.edge : BroswerURLSchemes.edge,
                                 BrowserNames.safari : BroswerURLSchemes.safari, ]
}

internal struct BroswerURLSchemes {
    static let browserDetectorPath = "://www.google.com"
    static let chrome = "googlechromes"
    static let firefox = "firefox://open-url?url=https"
    static let edge = "microsoft-edge"
    static let opera = "opera://open-url?url=https"
    static let dolphin = "dolphin"
    static let brave = "brave"
    static let safari = "https"
}

public enum BrowserNames: String { //, CaseIterable
    case safari = "Safari"
    case chrome = "Chrome"
    case firefox = "Firefox"
    case edge = "Edge"
    case opera = "Opera"
    case dolphin = "Dolphin"
    case brave = "Brave"
    
    static let allCases = [safari, chrome, firefox, edge, opera, dolphin, brave]
}
