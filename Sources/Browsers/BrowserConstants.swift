//
//  BrowserConstants.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/20/18.
//  CopyrigFoundationht © 2018 Daniel Chick. All rights reserved.
//

internal struct BrowserConstants {
    static let BrowserSchemeList: [BrowserNames: String] = [
        .chrome : BroswerURLSchemes.chrome,
        .firefox : BroswerURLSchemes.firefox,
        .opera : BroswerURLSchemes.opera,
        .dolphin : BroswerURLSchemes.dolphin,
        .brave : BroswerURLSchemes.brave,
        .edge : BroswerURLSchemes.edge,
        .safari : BroswerURLSchemes.safari,
    ]
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

public enum BrowserNames: String, CaseIterable {
    case safari = "Safari"
    case chrome = "Chrome"
    case firefox = "Firefox"
    case edge = "Edge"
    case opera = "Opera"
    case dolphin = "Dolphin"
    case brave = "Brave"
}
