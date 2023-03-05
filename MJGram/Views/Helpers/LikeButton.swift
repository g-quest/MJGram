//
//  LikeButton.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .black)
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(isSet: .constant(false))
    }
}
