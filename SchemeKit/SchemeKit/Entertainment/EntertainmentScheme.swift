//
//  EntertainmentScheme.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/22/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import UIKit

public struct EntertainmentScheme {
    public static func isEntertainmentAppInstalled(entertainmentAppName: EntertainmentNames) -> Bool {
        let entertainmentAppUrl = URL(string: EntertainmentConstants.EntertainmentSchemeList[entertainmentAppName]! + EntertainmentURLSchemes.entertainmentDetectorPath)
        return UIApplication.shared.canOpenURL(entertainmentAppUrl!)
    }
    
    public static func isTwitchInstalled() -> Bool {
        return isEntertainmentAppInstalled(entertainmentAppName: EntertainmentNames.twitch)
    }
    
    public static func isYoutubeInstalled() -> Bool {
        return isEntertainmentAppInstalled(entertainmentAppName: EntertainmentNames.youtube)
    }
    
    public static func listOfEntertainmentAppsInstalled() -> [EntertainmentNames] {
        var installedEntertainmentApps: [EntertainmentNames] = []
        EntertainmentNames.allCases.forEach { (name) in
            if isEntertainmentAppInstalled(entertainmentAppName: name) {
                installedEntertainmentApps.append(name)
            }
        }
        return installedEntertainmentApps
    }
    
    public static func getUrlForEntertainmentApp(urlToConvert: String, entertainmentAppName: EntertainmentNames) -> URL {
        let convertedUrl = urlToConvert.replacingOccurrences(of: "https", with: EntertainmentConstants.EntertainmentSchemeList[entertainmentAppName]!)
        return URL(string: convertedUrl)!
    }
}
