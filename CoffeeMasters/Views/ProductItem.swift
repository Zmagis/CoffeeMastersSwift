//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import SwiftUI

struct ProductItem: View {
    var product: Product
    
    var body: some View {
        VStack{
            AsyncImage(url: product.imageUrl)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)

                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

#Preview {
    ProductItem(product: Product( id: 1, name: "Test", description: "Test description", price: 1.25, image: "DummyImage" ))
}
