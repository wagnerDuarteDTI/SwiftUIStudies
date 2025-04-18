//
//  KeyWordTextFieldView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//


import SwiftUI

struct KeyWordTextFieldView: View {

    @ObservedObject var formsViewModel: FormsViewModel

    var body: some View {
        HStack {
            Text("Insert a search key word:")
                .font(.title2)
                .padding()
            TextField("Enter your name:", text: $formsViewModel.keyWord)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}
