//
//  Source.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import Foundation

public struct Source: Codable, Hashable {

    public let name: String
    public let url: String

    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
