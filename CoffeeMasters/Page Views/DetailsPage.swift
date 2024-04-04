//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import SwiftUI

struct DetailsPage: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    @State var quantity = 1
    var product: Product
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageUrl)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary"))
            HStack {
                Text("$ \(product.price, specifier: "%.2F") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price, specifier: "%.2F")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }.navigationTitle(product.name)
    }
}

#Preview {
    DetailsPage(product: Product(id: 1, name: "Dummy", description: "", price: 1.25, image: ""))
        .environmentObject(CartManager())
}
