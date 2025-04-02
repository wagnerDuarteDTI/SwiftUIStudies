//
//  GNews.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import Foundation

public struct GNews: Codable, Hashable {

    public let totalArticles: Int
    public let articles: [Article]

    init(totalArticles: Int, articles: [Article]) {
        self.totalArticles = totalArticles
        self.articles = articles
    }
}

public enum Languages: String, CaseIterable, Identifiable  {
    case english = "English"
    case portuguese = "Portuguese"
    case spanish = "Spanish"
    case french = "French"
    case italian = "Italian"
    case japanese = "Japanese"
    case chinese = "Chinese"

    public var id: String { self.rawValue }
}

