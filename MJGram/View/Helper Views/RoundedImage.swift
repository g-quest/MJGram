//
//  RoundedImage.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct RoundedImage: View {
    
    var name: String
    var height: CGFloat
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: height)
            .cornerRadius(50)
            .padding(.leading, 10)
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static let viewModel = MJPostsViewModel()
    
    static var previews: some View {
        RoundedImage(name: viewModel.mjPosts[2].imageName, height: 50)
    }
}
