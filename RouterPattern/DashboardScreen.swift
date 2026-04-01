//
//  ScreenB.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import SwiftUI

struct DashboardScreen: View {
    let viewModel: DashboardViewModel = .init(title: "Dash", destination: .init(destinationId: "SETTINGS"))
    
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
class DashboardViewModel {
    var title: String = "Dashboard"
    var destination: RouterDestination
    
    init(title: String, destination: RouterDestination) {
        self.title = title
        self.destination = destination
    }
    
    func buttonCTA() {
        Router.shared.navigate(by: destination)
    }
}


#Preview {
    DashboardScreen()
}
