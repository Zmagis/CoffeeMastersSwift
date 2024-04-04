//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager
    var item: (Product, Int)
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Ternary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

#Preview {
    OrderItem(item: (Product(id: 1, name: "String", description: "String", price: 1.25, image: ""), 2))
        .padding()
}
