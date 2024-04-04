//
//  Category.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
