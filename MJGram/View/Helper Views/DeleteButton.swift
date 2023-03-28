//
//  DeleteButton.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/27/23.
//

import SwiftUI

struct DeleteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: "trash")
                .labelStyle(.iconOnly)
                .foregroundColor(.red)
        }
    }
}

struct DeleteButton_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButton(isSet: .constant(false))
    }
}
