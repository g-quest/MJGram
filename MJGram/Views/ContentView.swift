//
//  ContentView.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .photos
    
    enum Tab {
        case photos
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            PostList()
                .tabItem {
                    Label("Photos", systemImage: "photo.stack")
                }
                .tag(Tab.photos)
            ProfileHome()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
                .tag(Tab.profile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
