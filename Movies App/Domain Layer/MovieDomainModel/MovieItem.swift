//
//  MovieItem.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation

struct  MovieItem: Identifiable, Equatable, Hashable {
    static func == (lhs: MovieItem, rhs: MovieItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var title: String
    var year: String
    var imdbId: String
    var type: String
    var poster: String
    
    init (
        title: String,
        year: String,
        imdbId: String,
        type: String,
        poster: String
    ) {
        self.title = title
        self.year = year
        self.imdbId = imdbId
        self.type = type
        self.poster = poster
    }
    
    init(entity: MovieEntity) {
        self.title = entity.title ?? ""
        self.year = entity.year ?? ""
        self.imdbId = entity.imdbId ?? ""
        self.type = entity.type ?? ""
        self.poster = entity.poster ?? ""
    }
}
