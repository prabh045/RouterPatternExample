//
//  ScreenB.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import SwiftUI

struct DashboardScreen: View {
    let viewModel: DashboardViewModel
    
    init(viewModel: DashboardViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("I am Dashboard")
            Button {
                viewModel.buttonCTA()
            } label: {
                Text("Go To")
            }

        }
    }
}

@Observable
class DashboardViewModel: Identifiable {
    var title: String = "Dashboard"
    var destination: RouterDestination
    let id = UUID()
    
    init(title: String, destination: RouterDestination) {
        self.title = title
        self.destination = destination
    }
    
    func buttonCTA() {
        Router.shared.navigate(by: destination)
    }
}


#Preview {
    DashboardScreen(viewModel: .init(title: "Dash", destination: .init(destinationId: "SETTINGS")))
}
