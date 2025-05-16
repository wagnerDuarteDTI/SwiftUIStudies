//
//  Router.swift
//  swiftUI+API
//
//  Created by Wagner Duarte on 16/05/25.
//

import Foundation
import SwiftUI
import Observation

/* This Macro will conform the class to the ObservableObject protocol, but
   automatically (and behind the scenes) will make all of it's atributes @Published */
@Observable
class Router {
    /* The NavigationPath class will store the stack of views in the navigation hieranchy */
    var path = NavigationPath()

    /* The functions below are responsible for appedding new views in the NavigationPath stack.
       Then, you can have the navigation stack updated and you can add views to it */
    func navigateToNewsListView() {
        path.append(Route.newsList)
    }

    func navigateToFormsView() {
        path.append(Route.forms)
    }

    func popToRoot() {
        path.removeLast(path.count)
    }
}

/* This enum should have all the possible navigation destinations (screens) */
enum Route: Hashable {
    case newsList
    case forms
}
