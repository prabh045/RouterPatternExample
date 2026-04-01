//
//  Destination.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 01/04/26.
//

import Foundation

struct RouterDestination {
    let id = UUID()
    
    func getRoute() -> Route {
        .detail
    }
}
