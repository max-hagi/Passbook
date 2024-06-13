//
//  ContentView.swift
//  Passbook
//
//  Created by Maxime Savehilaghi on 2024-06-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: CreatePassView()) {
                    Text("Create Pass")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                NavigationLink(destination: SharedPassesView()) {
                    Text("Shared Passes")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationTitle("Custom Passes").navigationBarTitleDisplayMode(.large)
        }
    }
}
struct CreatePassView: View {
    // UI and logic for creating a pass
    var body: some View {
        Text("Create Pass Screen")
    }
}

struct SharedPassesView: View {
    // UI and logic for viewing and sharing passes
    var body: some View {
        Text("Shared Passes Screen")
    }
}
#Preview {
    ContentView()
}
