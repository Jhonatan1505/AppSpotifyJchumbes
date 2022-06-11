//
//  Request.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 23/05/22.
//

import Foundation

class Request {
    
    let token =
        "BQAfw2dGThoG3NdjbZzizcmITb4iKXhgQIeSQ_PNf3beNOD-shh2Z3OusQUTibCplX4M6Hex-BMAakHni9vDIyFzuUneXzmrgfvEGgAzHVYHcPPrcPmHnEoQrivnC0g05bDWLnmx36hzYoXSwPWK7yBLcJ3CIGkKTHXStSo6rN_YlSGSz2Yi_A"
    
    let BASE_URL =
        "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            
            let parseURL = url
                .replacingOccurrences(of: " ", with: "%20")
                .replacingOccurrences(of: "ñ", with: "n")
            
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(parseURL)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
            
        } catch {
            return nil
        }
    }
    
}
