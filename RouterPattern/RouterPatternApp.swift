//
//  RouterPatternApp.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import SwiftUI

@main
struct RouterPatternApp: App {
    private var router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: Binding.constant(router.path)) {
                ContentView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .dash:
                            DashboardScreen()
                        case .detail:
                            DetailScreen()
                        case .settings:
                            SettingsScreen()
                        }
                }
            }
        }
    }
}
