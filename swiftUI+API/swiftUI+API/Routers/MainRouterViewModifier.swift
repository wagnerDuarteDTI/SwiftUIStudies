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
struct MainRouterViewModifier: ViewModifier {

    @State private var router: Router
    @StateObject var mainViewModel = MainViewModel()
    
    init(with router: Router) {
        self.router = router
    }

    private func routeView(for route: Route) -> some View {
        return Group {
            switch route {
            case .newsList:
                NewsListView(mainViewModel)
            case .forms:
                FormsView(mainViewModel)
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
    func setupMainRouterEnviroment() -> some View {
        self.environment(Router())
    }

    func withMainRouter(with router: Router) -> some View {
        self.modifier(MainRouterViewModifier(with: router))
    }
}
