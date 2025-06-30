//
//  MainScreen.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 07/04/25.
//


import SwiftUI
import Observation

public struct MainView: View {

    @Environment(Router.self) var router
    @StateObject var mainViewModel = MainViewModel()

    public var body: some View {
        FormsView(mainViewModel)
            .withMainRouter(with: self.router)
    }
}
