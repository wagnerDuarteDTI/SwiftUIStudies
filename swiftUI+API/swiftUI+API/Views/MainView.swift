//
//  MainScreen.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//


import SwiftUI
import Observation

public struct MainView: View {

    @StateObject private var mainViewModel = MainViewModel()

    public var body: some View {
        if mainViewModel.isNewsView {
            NewsListView(self.mainViewModel)
        } else {
            FormsView(self.mainViewModel)
        }
    }
}
