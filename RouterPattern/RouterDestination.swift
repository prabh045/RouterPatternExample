//
//  Destination.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 01/04/26.
//

import Foundation

struct RouterDestination {
    let id = UUID()
    let destinationId: String
    
    func getRoute() -> Route {
        switch destinationId.uppercased() {
        case "DASH":
            return .dash
        case "DETAIL":
            return .detail
        case "SETTINGS":
            return .settings
        default:
            return .invalidDestination
        }
    }
}

enum Route: Hashable, Sendable {
    case dash
    case detail
    case settings
    case invalidDestination
    
}
