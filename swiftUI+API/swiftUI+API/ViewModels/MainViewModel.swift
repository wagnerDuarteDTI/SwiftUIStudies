//
//  Main.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//

import SwiftUI

@MainActor
@Observable
public class MainViewModel: ObservableObject {

    @Published var gNews: GNews?
    @Published var selectedLanguage: Languages = .english
    @Published var keyWord: String = "a"
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    @Published var isNewsView: Bool = false

    func fetchNews() async {
        isNewsView = true
        isLoading = true
        errorMessage = nil

        do {
            NewsManager.shared.buildGNewsURL(self.selectedLanguage.acronym, self.keyWord)
            let news = try await NewsManager.shared.fetchGNews()
            gNews = news
        } catch {
            errorMessage = "Failed to fetch news: \(error.localizedDescription)"
        }
        isLoading = false
     }
}
