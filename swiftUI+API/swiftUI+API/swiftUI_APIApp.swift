//
//  swiftUI_APIApp.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 02/04/25.
//

import SwiftUI

@main
struct swiftUI_APIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .setupMainRouterEnviroment()
        }
    }
}
