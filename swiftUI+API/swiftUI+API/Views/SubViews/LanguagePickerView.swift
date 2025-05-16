//
//  PickerView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

struct LanguagePickerView: View {

    @ObservedObject private var mainViewModel: MainViewModel

    init(_ mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }

    var body: some View {
        HStack {
            Picker("Please, select a language:", selection: $mainViewModel.selectedLanguage) {
                ForEach(Languages.allCases) { language in
                    Text(language.rawValue).tag(language)
                }
            }
            .pickerStyle(.automatic)
            .padding()
        }
    }
}
