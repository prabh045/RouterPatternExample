//
//  DIContainer.swift
//  RouterPattern
//
//  Created by Prabhdeep Singh on 01/04/26.
//

import Foundation

protocol DIContainerProtocol {
    func register<Component>(type: Component.Type, component: Any) where Component: Identifiable 
    func resolve<Component>(type: Component.Type) -> Component? where Component: Identifiable
}

final class DIContainer: DIContainerProtocol {
    static let shared = DIContainer()
    
    private init() {}
    
    var components: [String: Any] = [:]
    
    func register<Component>(type: Component.Type, component: Any) where Component: Identifiable {
        components["\(type.ID)"] = component
        print(components)
    }
    
    func resolve<Component>(type: Component.Type) -> Component? where Component: Identifiable {
        components["\(type.ID)"] as? Component
    }
}
