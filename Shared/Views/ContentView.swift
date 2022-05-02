//
//  ContentView.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CropsView()
                .padding()
                .tabItem {
                    Label("Crops", systemImage: "cart")
                }
            MapView()
                .padding()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
