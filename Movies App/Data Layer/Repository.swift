//
//  Repository.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation

struct Repository {
    
    let api =  API()
    
    func getData(link: String) async -> SearchDomainModel {
        let data =  await api.getData(link: link)
        
        guard let data else { return SearchDomainModel(search: []) }
        
        return mapResponseToDomaineMainAPI(model: data)
    }
    
    private func mapResponseToDomaineMainAPI(model: APIEntity) -> SearchDomainModel {
        return .init(entity: model)
    }
}
