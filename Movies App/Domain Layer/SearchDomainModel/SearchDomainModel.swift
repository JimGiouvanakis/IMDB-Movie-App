//
//  SearchDomainModel.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation

struct SearchDomainModel: Identifiable, Equatable, Hashable {
    
    static func == (lhs: SearchDomainModel, rhs: SearchDomainModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var search: [MovieItem]
    
    init (
        search: [MovieItem]
    ) {
        self.search = search
    }
    
    init(entity: APIEntity?) {
        self.search = entity?.search?.map { MovieItem(entity: $0) } ?? []
    }
    
}
