//
//  Router.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import Combine
import SwiftUI

class Router: ObservableObject {
    @Published var path = NavigationPath()
    static let shared = Router()
    private init() {}
    
    func navigate(to route: Route) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func getPathValue() -> NavigationPath {
        return path
    }
    
}

enum Route: Hashable, Sendable {
    case dash
    case detail
    case settings
}
