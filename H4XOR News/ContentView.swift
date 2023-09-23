//
//  ContentView.swift
//  H4XOR News
//
//  Created by Ilyas Tyumenev on 23.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text("\(post.points)")
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
