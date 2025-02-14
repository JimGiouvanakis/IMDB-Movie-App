//
//  ResponseModel.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation

struct APIEntity: Codable {
    var search: [MovieEntity]?
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
    
    init(from decoder: Decoder) throws {
        let values = try? decoder.container(keyedBy: CodingKeys.self)
        search = try? values?.decodeIfPresent([MovieEntity].self, forKey: .search)
    }
}
