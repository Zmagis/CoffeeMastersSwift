//
//  Group.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import Foundation

struct Product {
    var id: Int
    var name: String
    var descriotion: String
    var price: Double
    var image: String
    
    var imageUrl: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
