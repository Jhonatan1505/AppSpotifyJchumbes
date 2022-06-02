//
//  Spotify+String.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 22/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink =
            "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=658866924449799&height=300&width=300&ext=1655847771&hash=AeT46ECrrNnTqYvIgsU"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
}
