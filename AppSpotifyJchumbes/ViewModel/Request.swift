//
//  Request.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 23/05/22.
//

import Foundation

class Request {
    
    let token =
        "BQCy77M5kv8noLcX-H2l40xRtAEahJDQVgWwPMnrp69Td-khEZaG4b9WWrvluXo8QCOt0zAW7m195Q1SA4GXKyWcGExd-wEIH9EqNYtCl_oqAHuDStd9Apv86y5hEaycFV_xzW1m3ogZgGDH6edU4AGhfbYzLgF-Nyg"
    
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
