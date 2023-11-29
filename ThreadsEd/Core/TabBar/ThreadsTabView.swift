//
//  ThreadsTabView.swift
//  ThreadsEd
//
//  Created by vbugrym on 29.11.2023.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTabIndex = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTabIndex == 0 ? .fill : .none)
                }
                .onAppear { selectedTabIndex = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem { Image(systemName: "magnifyingglass") }
                .onAppear { selectedTabIndex = 1 }
                .tag(1)
            
            CreateThreadView()
                .tabItem { Image(systemName: "plus") }
                .onAppear { selectedTabIndex = 2 }
                .tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTabIndex == 3 ? .fill : .none)
                }
                .onAppear { selectedTabIndex = 3 }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTabIndex == 4 ? .fill : .none)
                }
                .onAppear { selectedTabIndex = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}
