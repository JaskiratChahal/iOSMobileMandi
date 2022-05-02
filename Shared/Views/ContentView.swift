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
                .tabItem {
                    Label("Crops", systemImage: "cart")
                }
            MarketsView()
                .tabItem {
                    Label("Markets", systemImage: "globe")
                }
            MapView()
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
