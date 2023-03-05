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
    
//    var postIndex: Int {
//        modelData.posts.firstIndex(where: { $0.id == post.id })!
//     }
    var body: some View {
        Text(post.name)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PostDetail(post: modelData.posts[0])
            .environmentObject(modelData)
    }
}
