//
//  Profile.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import Foundation
import SwiftUI

struct Profile {
    var name: String
    var image: Image

    static let `default` = Profile(
        name: "Greg",
        image: Image("greg")
    )

}
