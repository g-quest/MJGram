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
                RoundedImage(name: profile.imageName, height: 100)
                    .padding(.top, 10)
                
                Text(profile.firstName).font(.largeTitle)

                let columns = [GridItem(), GridItem(), GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(modelData.posts) { post in
                        if (post.ownerUsername == profile.username) {
                            SquareImage(name: post.imageName)
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
