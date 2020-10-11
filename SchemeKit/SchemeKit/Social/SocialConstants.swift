//
//  SocialConstants.swift
//  SchemeKit
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

internal struct SocialConstants {
    static let SocialSchemeList: [SocialNames: String] = [
        .facebook : SocialURLSchemes.facebook,
        .instagram : SocialURLSchemes.instagram,
        .twitter : SocialURLSchemes.twitter,
    ]
}

internal struct SocialURLSchemes {
    static let socialAppDetectorPath = "://open"
    static let facebook = "fb"
    static let instagram = "instagram"
    static let twitter = "twitter"
}

public enum SocialNames: String, CaseIterable {
    case facebook = "Facebook"
    case twitter = "Twitter"
    case instagram = "Instagram"
}
