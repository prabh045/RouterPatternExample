//
//  Router.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import Combine
import SwiftUI

@Observable
class Router{
    var path = NavigationPath()
    static let shared = Router()
    private init() {}
    
    func navigate(by destination: RouterDestination) {
        let route = destination.getRoute()
        navigate(to: route)
    }
    
    private func navigate(to route: Route) {
        path.append(route)
    }
    
    private func navigateBack() {
        path.removeLast()
    }
    
    private func getPathValue() -> NavigationPath {
        return path
    }
    
}
