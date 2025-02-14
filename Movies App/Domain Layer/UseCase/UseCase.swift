//
//  UseCase.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 14/2/25.
//

import Foundation

struct UseCase {
    let repository = Repository()
    
    func execute(link: String) async  -> SearchDomainModel {
        let data = await repository.getData(link: link)
        return data
    }
}
