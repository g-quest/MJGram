//
//  ModelData.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import Foundation
import SwiftUI

struct MJPosts {
    var posts: [Post] = load("postData.json")
    
    var profile = Profile.default
    
    mutating func toggleLiked(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }

    mutating func add(post: Post) {
        posts.append(post)
    }
    
    mutating func deletePost(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts.remove(at: actualIndex)
    }
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
