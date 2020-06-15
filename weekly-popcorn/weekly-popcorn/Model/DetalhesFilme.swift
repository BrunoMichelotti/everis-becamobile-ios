//
//  DetalhesFilme.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class DetalhesFilme: NSObject, Decodable{

    let adult: Bool?
    let backdropPath: String?
    let belongsToCollection: BelongsToCollection?
    let budget: Int?
    let genres: [Genre]?
    let homepage: String?
    let id: Int?
    let imdbID, originalLanguage, originalTitle, overview: String?
    let popularity: Double?
    let posterPath: String?
    let productionCompanies: [ProductionCompany]?
    let productionCountries: [ProductionCountry]?
    let releaseDate: String?
    let revenue, runtime: Int?
    let spokenLanguages: [SpokenLanguage]?
    let status, tagline, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case budget, genres, homepage, id
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue, runtime
        case spokenLanguages = "spoken_languages"
        case status, tagline, title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
    init(_ adult: Bool,_ backdropPath: String,_ belongsToCollection: BelongsToCollection,_ budget: Int,_ genres: [Genre],_ homepage: String,_ id: Int,_ imdbID: String,_ originalLanguage: String,_ originalTitle: String ,_ overview: String,_ popularity: Double,_ posterPath: String,_ productionCompanies: [ProductionCompany],_ productionCountries: [ProductionCountry],_ releaseDate: String,_ revenue: Int,_ runtime: Int,_ spokenLanguages: [SpokenLanguage],_ status: String,_ tagline: String,_ title: String,_ video: Bool,_ voteAverage: Double,_ voteCount: Int) {
        self.adult = adult
        self.backdropPath = backdropPath
        self.belongsToCollection = belongsToCollection
        self.budget = budget
        self.genres = genres
        self.homepage = homepage
        self.id = id
        self.imdbID = imdbID
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.productionCompanies = productionCompanies
        self.productionCountries = productionCountries
        self.releaseDate = releaseDate
        self.revenue = revenue
        self.runtime = runtime
        self.spokenLanguages = spokenLanguages
        self.status = status
        self.tagline = tagline
        self.title = title
        self.video = video
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        
    }
    
    // MARK: - Metodos
    
    class func converteListaParaData(_ json: [String:Any]) -> Data?{
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodificarFilme(_ jsonData:Data) -> DetalhesFilme?{
        do{
            return try JSONDecoder().decode(DetalhesFilme.self, from: jsonData)
        }catch{
            print(error.localizedDescription)
            return nil
        }
        
    }
    
}
