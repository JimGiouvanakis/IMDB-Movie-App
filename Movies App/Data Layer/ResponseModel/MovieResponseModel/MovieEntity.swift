//
//  MovieEntity.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation

struct MovieEntity: Codable {
    
    let title :String?
    let year: String?
    let imdbId: String?
    let type: String?
    let poster : String?
    
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }
    
    init(from decoder: Decoder) throws {
        let values = try? decoder.container(keyedBy: CodingKeys.self)
        title = try? values?.decodeIfPresent(String.self, forKey: .title)
        year = try? values?.decodeIfPresent(String.self, forKey: .year)
        imdbId = try? values?.decodeIfPresent(String.self, forKey: .imdbId)
        type = try? values?.decodeIfPresent(String.self, forKey: .type)
        poster = try? values?.decodeIfPresent(String.self, forKey: .poster)
    }
}
