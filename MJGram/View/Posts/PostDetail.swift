//
//  PostDetail.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct PostDetail: View {
    @EnvironmentObject var viewModel: MJPostsViewModel
    var post: Post
    
    var postIndex: Int {
        viewModel.mjPosts.firstIndex(where: { $0.id == post.id })!
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
            
            HStack {
                Button {
                    viewModel.setLiked(post)
                } label: {
                    Label("Toggle Liked", systemImage: post.isLiked ? "heart.fill" : "heart")
                        .labelStyle(.iconOnly)
                        .foregroundColor(post.isLiked ? .red : .black)
                }
                .padding(.leading, 10)
                .padding(.top, 1)
                .buttonStyle(.plain)
                
                Spacer()
                
                Button {
                 print("clicked")
                } label: {
                    Label("Delete Post", systemImage: "trash")
                        .labelStyle(.iconOnly)
                        .foregroundColor(.red)
                }
                .padding(.trailing, 10)
                .padding(.top, 1)
                .buttonStyle(.plain)
            }
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static let viewModel = MJPostsViewModel()
    
    static var previews: some View {
        PostDetail(post: viewModel.mjPosts[1]).environmentObject(viewModel)
    }
}
