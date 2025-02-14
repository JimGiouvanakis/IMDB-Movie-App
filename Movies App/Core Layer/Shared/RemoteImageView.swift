//
//  RemoteImageView.swift
//  Movies App
//
//  Created by Dimitris Giouvanakis on 14/2/25.
//

import Foundation
import SwiftUI
import Kingfisher

struct RemoteImageView: View {
    let url: URL?
    
    var body: some View {
        
        KFImage.url(url)
            .resizable()
            .placeholder {
                ProgressView()
            }
            .fade(duration: 0.25)
        
    }
}
