//
//  SocialScheme.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import UIKit

struct SocialScheme {
    
    public static func isSocialAppInstalled(socialAppName: SocialNames) -> Bool {
        let socialAppUrl = URL(string: SocialConstants.SocialSchemeList[socialAppName]! + SocialURLSchemes.socialAppDetectorPath)
        return UIApplication.shared.canOpenURL(socialAppUrl!)
    }
    
    public static func isFacebookInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: SocialNames.facebook)
    }
    
    public static func isTwitterInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: SocialNames.twitter)
    }
    
    public static func isInstagramInstalled() -> Bool {
        return isSocialAppInstalled(socialAppName: SocialNames.instagram)
    }
    
    public static func listOfSocialAppsInstalled() -> [String] {
        var installedSocialApps: [String] = []
        SocialNames.allCases.forEach { (name) in
            if isSocialAppInstalled(socialAppName: name) {
                installedSocialApps.append(name.rawValue)
            }
        }
        return installedSocialApps
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
    
    public static func getUrlForSocialApp(urlToConvert: String, socialAppName: SocialNames) -> URL {
        let convertedUrl = urlToConvert.replacingOccurrences(of: "https", with: SocialConstants.SocialSchemeList[socialAppName]!)
        returnURL(string: convertedUrl)!
    }
}
