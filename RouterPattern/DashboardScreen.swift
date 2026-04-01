//
//  ScreenB.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 27/03/26.
//

import SwiftUI

struct DashboardScreen: View {
    
    var body: some View {
        VStack {
            Text("I am Dashboard")
            Button {
                Router.shared.navigate(to: .settings)
            } label: {
                Text("Go To Settings")
            }

        }
    }
}

#Preview {
    DashboardScreen()
}
