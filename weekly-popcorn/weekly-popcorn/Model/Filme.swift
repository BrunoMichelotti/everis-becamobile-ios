//
//  Filme.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class Filme: NSObject,Decodable {
   
    let originalName: String?
    let id: Int
    let name: String?
    let voteCount: Int
    let voteAverage: Double
    let firstAirDate: String?
    let posterPath: String
    let genreIDS: [Int]
    let originalLanguage, backdropPath, overview: String
    let originCountry: [String]?
    let popularity: Double?
    let mediaType: String
    let adult: Bool?
    let originalTitle, releaseDate: String?
    var title: String?
    let video: Bool?
    
    enum CodingKeys: String, CodingKey {
        case originalName = "original_name"
        case id, name
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case firstAirDate = "first_air_date"
        case posterPath = "poster_path"
        case genreIDS = "genre_ids"
        case originalLanguage = "original_language"
        case backdropPath = "backdrop_path"
        case overview
        case originCountry = "origin_country"
        case popularity
        case mediaType = "media_type"
        case adult
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case title, video
    }

    init(_ originalName: String?,_ id: Int,_ name: String?,_ voteCount: Int,_ voteAverage: Double,_ firstAirDate: String,_ posterPath: String,_ genreIDS: [Int],_ originalLanguage: String,_ backdropPath: String,_ overview: String,_ originCountry: [String]?,_ popularity: Double,_ mediaType: String,_ adult: Bool?,_ originalTitle: String?,_ releaseDate: String?,_ title: String?,_ video: Bool?) {
        self.originalName = originalName
        self.id = id
        self.name = name
        self.voteCount = voteCount
        self.voteAverage = voteAverage
        self.firstAirDate = firstAirDate
        self.posterPath = posterPath
        self.genreIDS = genreIDS
        self.originalLanguage = originalLanguage
        self.backdropPath = backdropPath
        self.overview = overview
        self.originCountry = originCountry
        self.popularity = popularity
        self.mediaType = mediaType
        self.adult = adult
        self.originalTitle = originalTitle
        self.releaseDate = releaseDate
        self.title = title
        self.video = video
    
        
    }
    
    // MARK: - Metodos
    
   class func converteListaParaData(_ json: [[String:Any]]) -> Data?{
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
   class func decodificarFilme(_ jsonData:Data) -> [Filme]?{
        do{
            return try JSONDecoder().decode([Filme].self, from: jsonData)
        }catch{
            print(error.localizedDescription)
            return nil
        }
        
    }
    
}
