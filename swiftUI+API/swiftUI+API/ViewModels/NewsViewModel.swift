//
//  NewsViewModel.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

@MainActor
public class NewsViewModel: ObservableObject {
    @Published var gNews: GNews? = nil
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil

    func fetchNews() async {
        isLoading = true
        errorMessage = nil

        do {
            let news = try await NewsManager.shared.fetchGNews()
            gNews = news
        } catch {
            errorMessage = "Failed to fetch news: \(error.localizedDescription)"
        }
        isLoading = false
     }
}
