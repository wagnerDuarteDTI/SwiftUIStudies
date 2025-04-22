//
//  FormsView.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

import SwiftUI

public struct FormsView: View {

    @ObservedObject private var formsViewModel: FormsViewModel

    init(parentViewModel: MainViewModel) {
        formsViewModel = FormsViewModel(parentViewModel)
    }

    public var body: some View {
        Form {
            Text("Title")
            LanguagePickerView(formsViewModel: self.formsViewModel)
            KeyWordTextFieldView(formsViewModel: self.formsViewModel)
            ConfirmButtonView(formsViewModel: self.formsViewModel)
        }
    }
}
