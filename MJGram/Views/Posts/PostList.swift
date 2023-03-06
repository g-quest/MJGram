//
//  PostList.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct PostList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        List {
            ForEach(modelData.posts) { post in
                PostDetail(post: post)
                    .listRowInsets(.init(top: 10,
                                         leading: 0,
                                         bottom: 10,
                                         trailing: 0))
            }
        }
        .listStyle(.inset)
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
            .environmentObject(ModelData())
    }
}
