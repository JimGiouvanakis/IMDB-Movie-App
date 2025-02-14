//
//  API.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 13/2/25.
//

import Foundation


struct API {
    
    func getData(link: String) async -> APIEntity? {
        
        do {
            let data = try await NetworkCall().fetchData(link: link)
            
            return try JSONDecoder().decode(APIEntity.self, from: data)
        } catch {
            print(error)
            return nil
        }
        
    }
}
