//
//  Main.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//

import SwiftUI

public class MainViewModel: ObservableObject {

    @Published var gNews: GNews?
    @Published var selectedLanguage: Languages = .english
    @Published var keyWord: String = "a"
    @Published var isLoading: Bool = false
    @Published var didPressButton: Bool = false
    @Published var errorMessage: String? = nil

    func fetchFormsData(selectedLanguage: String, keyWord: String) {
        
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
