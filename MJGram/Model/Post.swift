//
//  Post.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var tags: [String]
    var ownerUsername: String
    var ownerFirstName: String
    var ownerLastName: String
    var likes: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var ownerImage: String
    var ownerProfilePic: Image {
        Image(ownerImage)
    }
    
}
