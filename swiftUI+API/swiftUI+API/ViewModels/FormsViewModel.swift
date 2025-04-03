//
//  FormsViewModel.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 03/04/25.
//

import SwiftUI

@MainActor
public class FormsViewModel: ObservableObject {
    @Published var selectedLanguage: Languages = .english
    @Published var keyWord: String = ""

    func fetchFormsData() {
        
    }
}
