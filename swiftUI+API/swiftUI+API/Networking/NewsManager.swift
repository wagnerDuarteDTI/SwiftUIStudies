//
//  NewsManager.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import Foundation

class NewsManager {

    static let shared = NewsManager()
    private var url: URL?
    
    func buildGNewsURL(language: String = "en", keyword: String = "president"){
        let firstPart = "https://gnews.io/api/v4/search?q=example"
        let lastPart = "&apikey=01d27af667f6c3c9bde6df9e82109664"
        let url = "\(firstPart)&lang=\(language)&q=\(keyword)\(lastPart)"
        self.url = URL(string: url)
    }

    func fetchGNews() async throws -> GNews? {
        buildGNewsURL()
        guard let url = self.url else { return nil }
        var request = URLRequest(url: url )
        request.httpMethod = "GET"

        let (data, _) = try await URLSession.shared.data(for: request)
        let fetchedData = try JSONDecoder().decode(GNews.self, from: data)

        return fetchedData
    }
}
