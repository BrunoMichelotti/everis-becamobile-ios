//
//  MediaType.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/7/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class MediaType: NSObject, Decodable{
    
    enum MediaType: String, Codable {
        case movie = "movie"
        case tv = "tv"
    }
}
