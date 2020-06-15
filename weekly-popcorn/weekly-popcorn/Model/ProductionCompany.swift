//
//  ProductionCompany.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class ProductionCompany: NSObject, Decodable {
    let id: Int
    let logoPath: String?
    let name, originCountry: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
    init(_ id : Int,_ logoPath: String?,_ name: String,_ originCountry: String) {
        self.id = id
        self.logoPath = logoPath
        self.name = name
        self.originCountry = originCountry
    }
    
}
