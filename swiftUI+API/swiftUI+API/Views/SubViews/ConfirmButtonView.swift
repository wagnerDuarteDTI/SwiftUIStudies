//
//  ConfirmButtonView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

struct ConfirmButtonView: View {

    @ObservedObject private var mainViewModel: MainViewModel

    init(_ mainViewModel: MainViewModel) {
        self.mainViewModel = mainViewModel
    }

    var body: some View {
        Button("Search News") {
            mainViewModel.fetchFormsData(selectedLanguage: "", keyWord: "")
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}
