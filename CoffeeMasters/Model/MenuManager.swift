//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Eglė Gustaitė on 2024-04-02.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
           AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
               .responseDecodable(of: [Category].self) { response in
                   if let menuFromNetwork = response.value {
                       self.menu = menuFromNetwork
                   }
               }
       }
}

