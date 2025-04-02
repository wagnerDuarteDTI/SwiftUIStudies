//
//  Article.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import Foundation

public struct Article: Codable, Hashable {

    public let title: String
    public let description: String
    public let content: String
    public let url: String
    public let image: String
    public let publishedAt: Date
    public let source: Source

    init(title: String, description: String, content: String, url: String, image: String, publishedAt: Date, source: Source) {
        self.title = title
        self.description = description
        self.content = content
        self.url = url
        self.image = image
        self.publishedAt = publishedAt
        self.source = source
    }
}
