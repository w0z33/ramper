//
//  ContentView.swift
//  ramper
//
//  Created by Warwick Horton on 26/2/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        VStack() {
            Spacer()
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 60)
                .padding(.trailing, 60)
            Text("ramper.co.nz")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
                .foregroundStyle(Color("Foreground"))
                .lineLimit(1)
            Text("Ramper Cricket Scores")
                .font(.subheadline)
                .foregroundStyle(Color("Foreground"))
            Spacer()
        }
        .padding()
        .background(Color("Background"))
        
        TabView {
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
                Text("Video Stream")
                    .tabItem {
                        Image(systemName: "video.fill")
                        Text("Stream")
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
