//
//  ConfirmButtonView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

struct ConfirmButtonView: View {
    
    @ObservedObject var formsViewModel: FormsViewModel

    var body: some View {
        Button("Search News") {
            formsViewModel.fetchFormsData()
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}
