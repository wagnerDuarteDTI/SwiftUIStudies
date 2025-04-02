//
//  NewsManager.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import Foundation

class NewsManager {

    static let shared = NewsManager()

    func fetchGNews() async throws -> GNews? {
    
        guard let url = URL(string: "https://gnews.io/api/v4/search?q=example&apikey=01d27af667f6c3c9bde6df9e82109664") else { return nil }
        var request = URLRequest(url: url )
        request.httpMethod = "GET"

        let (data, _) = try await URLSession.shared.data(for: request)
        let fetchedData = try JSONDecoder().decode(GNews.self, from: data)

        return fetchedData
    }
}
