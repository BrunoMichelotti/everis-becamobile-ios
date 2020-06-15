//
//  SpokenLanguage.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class SpokenLanguage: NSObject, Decodable {
    let iso639_1, name: String
    
    enum CodingKeys: String, CodingKey {
        case iso639_1 = "iso_639_1"
        case name
    }
    
    init(_ iso639_1 : String,_ name: String) {
        self.iso639_1 = iso639_1
        self.name = name
    }
}
