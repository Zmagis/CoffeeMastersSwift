//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-03-26.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
