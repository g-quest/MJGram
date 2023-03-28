//
//  ModelData.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import Foundation
import SwiftUI

struct MJPosts {
    var posts: [Post] = [
        Post(
            name: "Dress made with tree leaves",
            image: Image("leavesdress"),
            owner: "Chrysteen",
            ownerImage: Image("chrysteen"),
            isLiked: false
        ),
        Post(
            name: "Girl playing the cello under water",
            image: Image("girlcello"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            name: "New Dr. Dre music album cover",
            image: Image("drdrealbumcover"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            name: "Party in the quantum universe with creatures dancing",
            image: Image("quantumparty"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            name: "Girl drinking a coffee while walking on the sidewalk with graffiti on the wall",
            image: Image("girlcoffeegraffiti"),
            owner: "Chrysteen",
            ownerImage: Image("chrysteen"),
            isLiked: false
        ),
        Post(
            name: "Drip painting",
            image: Image("drippainting"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            name: "Man fishing under a bridge with a skyline in the background",
            image: Image("manfishingbridge"),
            owner: "Chrysteen",
            ownerImage: Image("chrysteen"),
            isLiked: false
        ),
        Post(
            name: "Kid staring out an airplane window, clouds, dinosaurs, pterodactyl",
            image: Image("kidairplanedinosaur"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            name: "Pentatonic scale",
            image: Image("pentatonicscale"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
    ]
    
    var profile = Profile.default
    
    mutating func toggleLiked(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }

    mutating func add(post: Post) {
        posts.insert(post, at: 0)
    }
    
    mutating func delete(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts.remove(at: actualIndex)
    }
    
}
