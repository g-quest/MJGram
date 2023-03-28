//
//  Post.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct Post: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: Image
    var owner: String
    var ownerImage: Image
    var isLiked: Bool
}
