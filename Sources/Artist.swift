//
//  Artist.swift
//  MyApps
//
//  Created by Ken Tominaga on 2017/11/17.
//

import Foundation

public struct Artist: Codable {

    let id: String
    let name: String

    private enum ArtistCodingKeys: String, CodingKey {
        case id   = "artistId"
        case name = "artistName"
    }
}
