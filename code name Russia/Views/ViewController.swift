//
//  ViewController.swift
//  code name Russia
//
//  Created by Emil Karimov on 14.07.17.
//  Copyright © 2017 Emil Karimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let json = """
[
    {
        "name": "Home Town Market",
        "aisles": [
            {
                "name": "Produce",
                "shelves": [
                    {
                        "name": "Discount Produce",
                        "product": {
                            "name": "Banana",
                            "points": 200,
                            "description": "A banana that's perfectly ripe."
                        }
                    }
                ]
            }
        ]
    },
    {
        "name": "Big City Market",
        "aisles": [
            {
                "name": "Sale Aisle",
                "shelves": [
                    {
                        "name": "Seasonal Sale",
                        "product": {
                            "name": "Chestnuts",
                            "points": 700,
                            "description": "Chestnuts that were roasted over an open fire."
                        }
                    },
                    {
                        "name": "Last Season's Clearance",
                        "product": {
                            "name": "Pumpkin Seeds",
                            "points": 400,
                            "description": "Seeds harvested from a pumpkin."
                        }
                    }
                ]
            }
        ]
    }
]
""".data(using: .utf8)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func apiMethodParseToModel() {
        do {
            let decoder = JSONDecoder()
            let serviceStores = try decoder.decode([GroceryStoreService].self, from: json)
            
            let stores = serviceStores.map { GroceryStore(from: $0) }
            
            for store in stores {
                print("\(store.name) is selling:")
                for product in store.products {
                    print("\t\(product.name) (\(product.points) points): \(product.description)")
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}









































































