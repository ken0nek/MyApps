//
//  App.swift
//  MyAppsPackageDescription
//
//  Created by Ken Tominaga on 2017/11/17.
//

import Foundation

struct App: Codable {

    let id: String
    let name: String
    let formattedPrice: String
    let artworkUrl60: String
    let artworkUrl100: String
    let artworkUrl512: String

    private enum AppCodingKeys: String, CodingKey {
        case id              = "trackId"
        case name            = "trackName"
        case formattedPrice
        case artworkUrl60
        case artworkUrl100
        case artworkUrl512
    }
}
