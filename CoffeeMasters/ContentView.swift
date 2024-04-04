//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-03-26.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage().tabItem {
                Image(systemName: "cup.and.saucer")
                Text("Menu")
            }
            OffersPage().tabItem {
                Image(systemName: "tag")
                Text("Offer")
            }
            OrderPage().tabItem {
                Image(systemName: "cart")
                Text("Order")
            }
            .badge(cartManager.cart.count)
            InfoPage().tabItem {
                Image(systemName: "info")
                Text("Info")
            }
        }
    }
}

struct Greeting: View {
    @State var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
            Text("Hello \(name)")
        }
    }
}

#Preview {
    ContentView()
}
