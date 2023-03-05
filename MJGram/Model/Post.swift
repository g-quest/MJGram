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
    var imageName: String
    var tags: [String]
    var ownerUsername: String
    var ownerFirstName: String
    var ownerLastName: String
    var ownerImage: String
    var isLiked: Bool
    var likes: Int    
}
