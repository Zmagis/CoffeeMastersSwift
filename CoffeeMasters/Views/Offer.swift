//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-03-28.
//

import SwiftUI

struct Offer: View {
    var title = "title"
    var description = "Test"
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color("CardBackground")
                    )
                Text(description)
                    .padding(.leading)
                    .background(Color("CardBackground")
                    )
            }
        }
    }
}

#Preview {
    Offer(title:"My offer", description: "My description")
}
