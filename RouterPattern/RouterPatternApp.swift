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
    
    init() {
        setUpDIContainer()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: Binding.constant(router.path)) {
                ContentView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .dash:
                            DashboardScreen(viewModel: DIContainer.shared.resolve(type: DashboardViewModel.self) ?? .init(title: "Invalid", destination: .init(destinationId: "invalid")))
                        case .detail:
                            DetailScreen()
                        case .settings:
                            SettingsScreen()
                        case .invalidDestination:
                            InvalidDestinationScreen()
                    }
                }
            }
        }
    }
    
    func setUpDIContainer() {
        let container = DIContainer.shared
        container.register(type: DashboardViewModel.self, component: DashboardViewModel(title: "Welcome to dash", destination: .init(destinationId: "SETTINGS")))
    }
}
