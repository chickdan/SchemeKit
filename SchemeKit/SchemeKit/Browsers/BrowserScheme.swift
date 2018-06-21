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
        let browserUrl = URL(string: BrowserConstants.BrowserSchemeList[browserName]! + BroswerURLSchemes.browserDetectorPath)
        return UIApplication.shared.canOpenURL(browserUrl!)
    }
    
    public static func isChromeInstalled() -> Bool {
        let browserUrl = URL(string: BrowserConstants.BrowserSchemeList[BrowserNames.chrome]! + BroswerURLSchemes.browserDetectorPath)
        return UIApplication.shared.canOpenURL(browserUrl!)
    }
    
    public static func isFirefoxInstalled() -> Bool {
        let browserUrl = URL(string: BrowserConstants.BrowserSchemeList[BrowserNames.firefox]! + BroswerURLSchemes.browserDetectorPath)
        return UIApplication.shared.canOpenURL(browserUrl!)
    }
    
    public static func isEdgeInstalled() -> Bool {
        let browserUrl = URL(string: BrowserConstants.BrowserSchemeList[BrowserNames.edge]! + BroswerURLSchemes.browserDetectorPath)
        return UIApplication.shared.canOpenURL(browserUrl!)
    }
    
    public static func listOfBrowsersInstalled() -> [String] {
        var installedBrowsers: [String] = []
        BrowserNames.allCases.forEach { (name) in
            if isBrowserInstalled(browserName: name) {
                installedBrowsers.append(name.rawValue)
            }
        }
        return installedBrowsers
    }
    
    public static func getUrlForBrowser(urlToConvert: String, browserName: BrowserNames) -> URL {
        let convertedUrl = urlToConvert.replacingOccurrences(of: "https", with: BrowserConstants.BrowserSchemeList[browserName]!)
        var finalUrl: URL!
        DispatchQueue.global(qos: .background).async {
            finalUrl = URL(string: convertedUrl)!
        }
        
        return finalUrl
    }
}
