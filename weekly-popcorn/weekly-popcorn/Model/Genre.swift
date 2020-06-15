//
//  Genre.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class Genre: NSObject, Decodable {
    let id: Int
    let name: String
    
    init(_ id: Int,_ name: String) {
        self.id = id
        self.name = name
    }
    
}
