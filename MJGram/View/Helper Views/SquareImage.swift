//
//  SquareImage.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct SquareImage: View {
    
    var name: Image
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(
                name
                    .resizable()
                    .scaledToFill()
            )
            .clipped()
    }
}

struct SquareImage_Previews: PreviewProvider {
    static let viewModel = MJPostsViewModel()
    
    static var previews: some View {
        SquareImage(name: viewModel.mjPosts[4].image)
    }
}
