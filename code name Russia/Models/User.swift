//
//  User.swift
//  code name Russia
//
//  Created by Emil Karimov on 14.07.17.
//  Copyright © 2017 Emil Karimov. All rights reserved.
//

import Foundation

struct GroceryStore {
    var name: String
    var products: [Product]
    
    struct Product: Codable {
        var name: String
        var points: Int
        var description: String
    }
    
    init(from service: GroceryStoreService) {
        name = service.name
        products = []
        
        for aisle in service.aisles {
            for shelf in aisle.shelves {
                products.append(shelf.product)
            }
        }
    }
}

struct GroceryStoreService: Decodable {
    let name: String
    let aisles: [Aisle]
    
    struct Aisle: Decodable {
        let name: String
        let shelves: [Shelf]
        
        struct Shelf: Decodable {
            let name: String
            let product: GroceryStore.Product
        }
    }
}



