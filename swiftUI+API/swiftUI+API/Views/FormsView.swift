//
//  FormsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

import SwiftUI

public struct FormsView: View {

    @ObservedObject private var mainViewModel: MainViewModel

    init(_ mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }

    public var body: some View {
        VStack {
            Text("GNews")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            Form {
                Section {
                    Picker("Language chosen:", selection: $mainViewModel.selectedLanguage) {
                        ForEach(Languages.allCases) { language in
                            Text(language.rawValue).tag(language)
                        }
                    }
                    .pickerStyle(.automatic)
                    .padding()
                } header: {
                    Text("Language Selection")
                } footer: {
                    Text("The GNews will search for news in the language you choose!")
                }
                Section {
                    TextField("News subject:", text: $mainViewModel.keyWord)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                } header: {
                    Text("Subject Selection")
                } footer: {
                    Text("The GNews will search for news for the keywords you enter!")
                }
            }
            Button("Search News") {
                Task {
                    await mainViewModel.fetchNews()
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
