//
//  String+Extension.swift
//  MyAppsPackageDescription
//
//  Created by Ken Tominaga on 2017/11/17.
//

import UIKit

extension String {

    var url: URL? {
        return URL(string: self)
    }

    var image: UIImage? {
        guard let url = url else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return UIImage(data: data)
    }

}
