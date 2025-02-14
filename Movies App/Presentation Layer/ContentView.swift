//
//  ContentView.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = AppViewModel()
    @Environment(\.appCoordinator) var appCoordinator: AppCoordinator
    
    @State var movieName: String = ""
    
    var body: some View {
        VStack {
            ScrollView {

                TextField("Search", text: $movieName)
                    .onSubmit {
                        Task { await viewModel.getMovies(movieName: movieName)}
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                VStack{
                    ForEach(viewModel.movies, id: \.id) { movie in
                        Button {
                            appCoordinator.push(page: .movieDetails(movie: movie))
                        } label: {
                            VStack(alignment: .leading) {
                                MovieCardView(movie: movie)
                                    .foregroundColor(Color.black)
                                
                                Divider()
                                    .overlay(Color.black.opacity(0.6))
                            }
                        }

                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
