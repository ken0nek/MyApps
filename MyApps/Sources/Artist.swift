//
//  Artist.swift
//  MyAppsPackageDescription
//
//  Created by Ken Tominaga on 2017/11/17.
//

import Foundation

struct Artist: Codable {

    let id: String
    let name: String

    private enum ArtistCodingKeys: String, CodingKey {
        case id   = "artistId"
        case name = "artistName"
    }
}
