//
//  PublicPostsViewModel.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/21/23.
//

import SwiftUI

class MJPostsViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: MJPosts = MJPosts()
    
    // MARK: - Public vars available to the View
    
    var mjPosts: [Post] {
        model.posts
    }
    
    var mjProfile: Profile {
        model.profile
    }
    
    // MARK: - User Intent
    
    func setLiked(_ post: Post) {
        model.toggleLiked(post)
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
//            let newPost = Post(image: Image(uiImage: image), description: "Something New", isFavorite: false, author: User.currentUser)
            
            let newPost = Post(
                id: 10,
                name: "This is a new MJGram post",
                image: Image(uiImage: image),
                owner: self.model.profile.name,
                ownerImage: Image("greg"),
                isLiked: false
                )


            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.add(post: newPost)
        }
    }
    
    func deletePostAt(_ post: Post) {
        model.delete(post)
    }
    
}
