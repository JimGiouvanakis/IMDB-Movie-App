//
//  MovieCardView.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 14/2/25.
//

import SwiftUI

struct MovieCardView: View {
    
    @State var movie: MovieItem
    
    @StateObject var viewModel = AppViewModel()
    
    var body: some View {
        HStack {
            RemoteImageView(url: viewModel.getImageURL(url: movie.poster))
                .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.25)
                .cornerRadius(20)
                .padding()
            
            VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.system(size: 15))
                        .bold()
                
                Text(movie.year)
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
                    .bold()
            }
        }
    }
}


#Preview {
    MovieCardView(movie: MovieItem(title: "You Are So Not Invited to My Bat Mitzvah", year: "2023", imdbId: "tt21276878", type: "movie", poster: "https://m.media-amazon.com/images/M/MV5BZmU0NjhkYzctZDBhNi00NzFjLWFkMjAtZGY0MmM3YzU3ZTgyXkEyXkFqcGc@._V1_SX300.jpg"))
}
