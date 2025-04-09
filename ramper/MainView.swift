//
//  MainView.swift
//  ramper
//
//  Created by Warwick Horton on 26/2/2025.
//

import SwiftData
import SwiftUI

struct MainView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Umpire Mode")
                .tabItem {
                    Image(systemName: "figure.wave")
                    Text("Umpire")
                }
            Text("Score Mode")
                .tabItem {
                    Image(systemName: "oval.portrait.inset.filled")
                    Text("Score")
                }
            Text("Game History")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.fill")
                    Text("Games")
                }
            Text("Settings Screen")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }

        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
