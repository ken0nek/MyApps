//
//  MyAppsExtension.swift
//  MyApps
//
//  Created by Ken Tominaga on 2017/11/17.
//

import Foundation

public struct MyAppsExtension<Base> {

    let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol MyAppsExtensionCompatible {

    associatedtype Compatible
    var ma: Compatible { get }
}

extension MyAppsExtensionCompatible {

    public var ma: MyAppsExtension<Self> {
        return MyAppsExtension(self)
    }
}
