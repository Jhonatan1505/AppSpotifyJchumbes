//
//  Request.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 23/05/22.
//

import Foundation

class Request {
    
    let token =
        "BQAyEIy84RdXq5nCBKGAzu7W9xui8OUqEf8iDroA2pmWYD_nxlhTEwOVio6rtb88l65QLi1rX0KlzM12vlJEsgeS5djECKSA3idPuDjfhBB52e3V3LsM2e900HDfFboCs684GX_tFRTMmnO90GEOnFXD2fIh1s2RXt5ciO3DQA52tT-fS0JjIA"
    
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
