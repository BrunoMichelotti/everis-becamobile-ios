//
//  ProductionCountry.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class ProductionCountry: NSObject, Decodable {
    let iso3166_1, name: String
    
    enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case name
    }
    
    init(_ iso3166_1: String,_ name: String) {
        self.iso3166_1 = iso3166_1
        self.name = name
    }
}
