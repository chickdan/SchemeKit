//
//  BrowserScheme.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/20/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import UIKit

public struct BrowserScheme {
    public static func isBrowserInstalled(browserName: BrowserNames) -> Bool {
        guard let scheme = BrowserConstants.BrowserSchemeList[browserName] else {
            return false
        }
        
        let appStringUrl = scheme + BroswerURLSchemes.browserDetectorPath
        
        guard let browserUrl = URL(string: appStringUrl) else {
            return false
        }
        
        return UIApplication.shared.canOpenURL(browserUrl)
    }
    
    public static func isChromeInstalled() -> Bool {
        return isBrowserInstalled(browserName: .chrome)
    }
    
    public static func isFirefoxInstalled() -> Bool {
        return isBrowserInstalled(browserName: .firefox)
    }
    
    public static func isEdgeInstalled() -> Bool {
        return isBrowserInstalled(browserName: .edge)
    }
    
    public static func isBraveInstalled() -> Bool {
        return isBrowserInstalled(browserName: .brave)
    }
    
    public static func listOfBrowsersInstalled() -> [BrowserNames] {
        var installedBrowsers: [BrowserNames] = []
        BrowserNames.allCases.forEach { (name) in
            if isBrowserInstalled(browserName: name) {
                installedBrowsers.append(name)
            }
        }
        return installedBrowsers
    }
    
    public static func getUrlForBrowser(urlToConvert: String, browserName: BrowserNames) -> URL? {
        guard let scheme = BrowserConstants.BrowserSchemeList[browserName] else {
            return nil
        }
        
        let convertedUrl = urlToConvert.replacingOccurrences(of: "https", with: scheme)
        
        return URL(string: convertedUrl)
    }
}
