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
            Text("Please, select a language: ")
                         .font(.headline)
                         .padding(.trailing, 8)
            Picker("", selection: $mainViewModel.selectedLanguage) {
                ForEach(Languages.allCases) { language in
                    Text(language.rawValue).tag(language)
                }
            }
            .pickerStyle(.automatic)
            .padding()
        }
    }
}
