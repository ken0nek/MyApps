//
//  LookupRequest.swift
//  MyAppsPackageDescription
//
//  Created by Ken Tominaga on 2017/11/17.
//

import Foundation
import APIKit

struct LookupRequest: Request {

    typealias Response = LookupResponse

    let countryCode: String
    let developerID: String

    var baseURL: URL {
        return URL(string: "https://itunes.apple.com")!
    }

    var path: String {
        return "/\(countryCode)/lookup"
    }

    var method: HTTPMethod {
        return .get
    }

    var queryParameters: [String : Any]? {
        return [
            "id": developerID,
            "entity": "software"
        ]
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> LookupResponse {
        guard let dict = object as? [[String: Any]] else { fatalError() }
        print(dict)
        return LookupResponse(artist: Artist(id: "hoge", name: "piyo"), apps: [])
    }

}
