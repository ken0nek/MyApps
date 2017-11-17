//
//  String+MyAppsExtension.swift
//  MyApps
//
//  Created by Ken Tominaga on 2017/11/17.
//  Copyright © 2017 ken0nek. All rights reserved.
//

import UIKit

extension String: MyAppsExtensionCompatible {}

extension MyAppsExtension where Base == String {

    public var url: URL? {
        return URL(string: base)
    }

    public var image: UIImage? {
        guard let url = url else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return UIImage(data: data)
    }
}
