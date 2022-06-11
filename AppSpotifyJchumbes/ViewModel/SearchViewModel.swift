//
//  SearchViewModel.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 4/06/22.
//

import Foundation

class SearchViewModel {
    
    let request: Request = Request()
    
    var searchResult: TracksSeacrh? = nil
    
    func getMusicsByName(name: String) async -> TracksSeacrh? {
        guard let data = await request.getDataFromAPI(url: "search?q=\(name)&type=track&limit=10") else { return nil }
        
        if let decoder = try? JSONDecoder().decode(SearchList.self, from: data) {
            DispatchQueue.main.async(execute: {
                self.searchResult = decoder.tracks
            })
        }
        
        return searchResult
    }
}
