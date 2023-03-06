//
//  PostDetail.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct PostDetail: View {
    @EnvironmentObject var modelData: ModelData
    var post: Post
    
    var postIndex: Int {
        modelData.posts.firstIndex(where: { $0.id == post.id })!
     }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack() {
                RoundedImage(name: post.ownerImage, height: 30)

                Text(post.ownerFirstName)
                    .font(.headline)
                
                Spacer()
            }
            
            SquareImage(name: post.imageName)
            
            Text(post.name)
                .font(.caption)
                .padding(.leading, 10)
            
            LikeButton(isSet: $modelData.posts[postIndex].isLiked)
                .padding(.leading, 10)
                .padding(.top, 1)
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PostDetail(post: modelData.posts[0])
            .environmentObject(modelData)
    }
}
