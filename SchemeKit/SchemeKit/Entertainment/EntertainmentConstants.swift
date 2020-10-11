//
//  EntertainmentConstants.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

internal struct EntertainmentConstants {
    static let EntertainmentSchemeList: [EntertainmentNames: String] = [
        .twitch : EntertainmentURLSchemes.twitch,
        .youtube : EntertainmentURLSchemes.youtube,
    ]
}

internal struct EntertainmentURLSchemes {
    static let entertainmentDetectorPath = "://open"
    static let twitch = "twitch"
    static let youtube = "youtube"
}

public enum EntertainmentNames: String, CaseIterable {
    case twitch = "Twitch"
    case youtube = "YouTube"
}
