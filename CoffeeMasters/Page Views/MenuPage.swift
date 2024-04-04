//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage(product: product)
                        } label: {
                            ProductItem(product: product)
                        }
                        
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
