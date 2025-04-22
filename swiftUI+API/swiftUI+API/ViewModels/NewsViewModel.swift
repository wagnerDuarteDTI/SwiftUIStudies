//
//  NewsViewModel.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

@MainActor
public class NewsViewModel: ObservableObject {

    @ObservedObject private var parentViewModel: MainViewModel

    @Published var gNews: GNews? = nil
    @Published var didPressButton: Bool = false
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil

    init(_ parentViewModel: MainViewModel) {
        self.parentViewModel = parentViewModel
        parentViewModel.newsViewModel = self
    }

    func fetchNews() async {
        isLoading = true
        errorMessage = nil

        do {
            let news = try await NewsManager.shared.fetchGNews()
            gNews = news
            //gNews = GNewsMock.shared.gNewsMock
        } catch {
            errorMessage = "Failed to fetch news: \(error.localizedDescription)"
        }
        isLoading = false
     }
}
