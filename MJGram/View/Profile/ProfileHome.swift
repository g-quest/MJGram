//
//  ProfileHome.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct ProfileHome: View {
    @EnvironmentObject var viewModel: MJPostsViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                RoundedImage(name: viewModel.mjProfile.imageName, height: 100)
                    .padding(.top, 10)
                
                Text(viewModel.mjProfile.firstName).font(.largeTitle)

                let columns = [GridItem(), GridItem(), GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.mjPosts) { post in
                        if (post.ownerUsername == viewModel.mjProfile.username) {
                            SquareImage(name: post.imageName)
                        }
                    }
                }
            }
        }
    }
}

struct ProfileHome_Previews: PreviewProvider {
    
    static let viewModel = MJPostsViewModel()
    
    static var previews: some View {
        ProfileHome().environmentObject(viewModel)
    }
}
