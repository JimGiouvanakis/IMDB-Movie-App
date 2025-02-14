//
//  AppViewModel.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 14/2/25.
//

import Foundation

@MainActor
class AppViewModel: ObservableObject {
    
    let useCase = UseCase()
    
    @Published var movies: [MovieItem] = []
    
//    func setup() async {
//        await getMovies()
//    }
    
    func getMovies(movieName: String) async {
        
        let data = await useCase.execute(link: fixURL(movieName: movieName))
        
        guard data.search.count > 0 else { return }
        
        self.movies = data.search
    }
    
    func fixURL(movieName: String) -> String {
        
        return Constants.URL_BASE + movieName + Constants.URL_API_KEY + Constants.API_KEY
        
    }
    
    func getImageURL(url: String) -> URL? {
        return URL(string: url)
    }
    
    
}
