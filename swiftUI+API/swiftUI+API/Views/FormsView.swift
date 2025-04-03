//
//  FormsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

import SwiftUI

public struct FormsView: View {
    
    @ObservedObject private var formsViewModel = FormsViewModel()
    
    public var body: some View {
        VStack {
            Text("Title")
            LanguagePickerView(formsViewModel: self.formsViewModel)
            KeyWordTextFieldView()
            ConfirmButtonView(formsViewModel: self.formsViewModel)
        }
    }
}
