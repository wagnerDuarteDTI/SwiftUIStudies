//
//  FormsViewModel.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

import SwiftUI

@MainActor
public class FormsViewModel: ObservableObject {

    @ObservedObject private var parentViewModel: MainViewModel

    @Published var selectedLanguage: Languages = .english
    @Published var keyWord: String = "a"

    init(_ parentViewModel: MainViewModel) {
        self.parentViewModel = parentViewModel
        parentViewModel.formsViewModel = self
    }

    func fetchFormsData() {
        parentViewModel.fetchFormsData(selectedLanguage: self.selectedLanguage.rawValue, keyWord: self.keyWord)
    }
}
