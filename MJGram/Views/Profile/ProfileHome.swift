//
//  ProfileHome.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct ProfileHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var profile: Profile

    
    var body: some View {
        ScrollView {
            VStack {
                Image(profile.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .cornerRadius(50)
                    .padding(.leading, 10)
                
                Text(profile.firstName).font(.largeTitle)

                let columns = [GridItem(), GridItem(), GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(modelData.posts) { post in
                        if (post.ownerUsername == profile.username) {
                            Rectangle()
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Image(post.imageName)
                                        .resizable()
                                        .scaledToFill()
                                )
                                .clipped()
                        }
                    }
                }
            }
        }
    }
}

struct ProfileHome_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHome(profile: Profile.default).environmentObject(ModelData())

    }
}
