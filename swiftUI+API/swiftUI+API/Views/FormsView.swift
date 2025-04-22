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
        Form {
            HStack {
                Text("Insert a search key word:")
                    .font(.title2)
                    .padding()
                TextField("Enter your name:", text: $mainViewModel.keyWord)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            Text("Title")
            LanguagePickerView(self.mainViewModel)
            KeyWordTextFieldView(self.mainViewModel)
            ConfirmButtonView(self.mainViewModel)
        }
    }
}
