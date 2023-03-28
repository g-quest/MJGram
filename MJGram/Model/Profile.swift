//
//  Profile.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import Foundation
import SwiftUI

struct Profile {
    var firstName: String
    var lastName: String
    var username: String
    var imageName: String

    static let `default` = Profile(
        firstName: "Greg",
        lastName: "Cuesta",
        username: "greg",
        imageName: "greg"
    )

}
