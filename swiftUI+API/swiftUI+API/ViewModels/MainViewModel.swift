//
//  Main.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//

import SwiftUI

@MainActor
public class MainViewModel: ObservableObject {

    var formsViewModel: FormsViewModel?
    var newsViewModel: NewsViewModel?

    func fetchFormsData(selectedLanguage: String, keyWord: String) {
        self.newsViewModel?.didPressButton = true
    }
}
