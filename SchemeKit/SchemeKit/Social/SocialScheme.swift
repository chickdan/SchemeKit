//
//  SocialScheme.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import UIKit

public struct SocialScheme {
    
    public static func isSocialAppInstalled(socialAppName: SocialNames) -> Bool {
        guard let scheme = SocialConstants.SocialSchemeList[socialAppName] else {
            return false
        }
        
        let appStringUrl = scheme + SocialURLSchemes.socialAppDetectorPath
        
        guard let socialAppUrl = URL(string: appStringUrl) else {
            return false
        }
        
        return UIApplication.shared.canOpenURL(socialAppUrl)
    }
    
    public static func isFacebookInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: .facebook)
    }
    
    public static func isTwitterInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: .twitter)
    }
    
    public static func isInstagramInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: .instagram)
    }
    
    public static func listOfSocialAppsInstalled() -> [SocialNames] {
        var installedSocialApps: [SocialNames] = []
        SocialNames.allCases.forEach { (name) in
            if isSocialAppInstalled(socialAppName: name) {
                installedSocialApps.append(name)
            }
        }
        return installedSocialApps
    }
    
    public static func getUrlForSocialApp(urlToConvert: String, socialAppName: SocialNames) -> URL? {
        guard let scheme = SocialConstants.SocialSchemeList[socialAppName] else {
            return nil
        }
        
        let convertedUrl = urlToConvert.replacingOccurrences(of: "https", with: scheme)
        
        return URL(string: convertedUrl)
    }
}
