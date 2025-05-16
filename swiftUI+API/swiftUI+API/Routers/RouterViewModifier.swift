//
//  RouterViewModifier.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 16/05/25.
//

import SwiftUI
/* The ViewModifier Protocols allows you to group up view modifiers in a single custom modifier!
   This allows you to reduce duplicate code when customizing view properties and configurations!
   In this case below, the protocol is being used to create the .withRouter modifier.
   this modifier implements a NavigationStack, adds a enviroment router to it, add a navigationDestination (for what???).
   The view that implements this modifier will be abble to manage the navigation */
struct RouterViewModifier: ViewModifier {
    @State private var router = Router()
    
    private func routeView(for route: Route) -> some View {
        Group {
            switch route {
            case .newsList:
                MainView()
            case .forms:
                MainView()
            }
        }
        .environment(router)
    }

    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .environment(router)
                .navigationDestination(for: Route.self) { route in
                    routeView(for: route)
                }
        }
    }
}

extension View {
    func withRouter() -> some View {
        self.modifier(RouterViewModifier())
    }
}
