//
//  MovieDetailsView.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 14/2/25.
//

import SwiftUI

struct MovieDetailsView: View {
    
    @State var movie: MovieItem
    
    @StateObject var viewModel = AppViewModel()
    
    @Environment(\.appCoordinator) var appCoordinator: AppCoordinator
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(movie.title)
                .font(.system(size: 35,weight: .bold))
            
            VStack(alignment: .leading) {
                
                RemoteImageView(url: viewModel.getImageURL(url: movie.poster))
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.4)
                    .cornerRadius(20)
                    .padding()
                
                makeHeaderInfo(string: movie.year, type: .year)
                
                makeHeaderInfo(string: movie.type, type: .type)
            }
            
            Spacer()
        }
    }
    
    
    @ViewBuilder
    func makeHeaderInfo(string: String, type: TypeOfInfo) -> some View {
        HStack {
            Text(type.rawValue)
                .font(.system(size: 18))
                .foregroundColor(Color.gray)
            
            Text(string)
                .font(.system(size: 20))
                .foregroundColor(Color.black)
        }
    }
}

enum TypeOfInfo: String {
    case title = "Title:"
    case year = "Year of Release:"
    case type = "Type:"
}
