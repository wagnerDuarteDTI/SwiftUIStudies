//
//  MainScreen.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//


import SwiftUI

public struct MainView: View {

    @ObservedObject private var mainViewModel = MainViewModel()

    public var body: some View {
        FormsView(parentViewModel: self.mainViewModel)
        NewsView(parentViewModel: self.mainViewModel)
    }
    
    public func fetchNews() {
        
    }
}
