//
//  EntertainmentConstants.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

struct EntertainmentConstants {
    static let EntertainmentSchemeList = [EntertainmentNames.twitch : EntertainmentURLSchemes.twitch,
                                   EntertainmentNames.youtube : EntertainmentURLSchemes.youtube, ]
}

internal struct EntertainmentURLSchemes {
    static let entertainmentDetectorPath = "://open"
    static let twitch = "twitch"
    static let youtube = "youtube"
}

enum EntertainmentNames: String { //, CaseIterable
    case twitch = "Twitch"
    case youtube = "YouTube"
    
    static let allCases = [twitch, youtube]
}
