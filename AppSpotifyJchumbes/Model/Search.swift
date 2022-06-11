//
//  Search.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 4/06/22.
//

import Foundation

struct SearchList: Codable {
    let tracks: TracksSeacrh
}

struct TracksSeacrh: Codable {
    let href: String
    let items: [ItemsSearch]
}

struct ItemsSearch: Codable {
    let album: AlbumSearch
}

struct AlbumSearch: Codable {
    let artists: [Artists]
    let images: [Image]
    let name: String
}
