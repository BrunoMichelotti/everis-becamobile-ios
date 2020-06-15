//
//  BelongsToCollection.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class BelongsToCollection: NSObject, Decodable {
    let id: Int
    let name, posterPath, backdropPath: String
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
    
    init(_ id: Int,_ name: String,_ posterPath: String,_ backdropPath: String) {
        self.id = id
        self.name = name
        self.posterPath = posterPath
        self.backdropPath = backdropPath
    }
    
}
