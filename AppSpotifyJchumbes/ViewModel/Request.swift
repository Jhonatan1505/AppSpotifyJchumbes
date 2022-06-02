//
//  Request.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 23/05/22.
//

import Foundation

class Request {
    
    let token =
        "BQC2bD0OHcK9amfAscV4R_rCbGh-HQYUdn2A74VgeqZptIAu4eCYyE-BCZqKXhg9B60qsJmzQKFq7vRG-yAgYkXinAF_UK4Zba7NADAZ8L9GtPjnG0kNH-Me5F5i_Uh4Sl1Fq6Jr5b1KO4QIruZBNY1l0oNgR3x7u1nQ3KY668oi7rA-BePXwg"
    
    let BASE_URL =
        "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
            
        } catch {
            return nil
        }
    }
    
}
