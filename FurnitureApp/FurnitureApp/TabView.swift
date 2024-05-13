//
//  TabView.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import SwiftUI

struct TabUIView: View {
    var body: some View {
        NavigationView {
            TabView {
                ItemsView()
                    .tabItem {
                        Label("", systemImage: "storefront")
                    }
                
                UserView()
                    .tabItem {
                        Label("", systemImage: "face.smiling")
                    }
            }
            .accentColor(Color.green.opacity(0.5))
        }
    }
}

#Preview {
    TabUIView()
}
