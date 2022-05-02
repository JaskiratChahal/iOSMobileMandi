//
//  MarketsView.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 02/05/2022.
//

import SwiftUI

struct MarketsView: View {
    @ObservedObject var dataViewModel = DataViewModel()
    
    var body: some View {
        NavigationView {
            List(dataViewModel.markets) { market in
                VStack {
                    HStack {
                        Text(market.name.toTitleCase())
                        Spacer()
                        Text(String(market.latitude) + " " + String(market.longitude))
                    }
                }
            }
            .navigationTitle("Markets")
        }
    }
}
struct MarketsView_Previews: PreviewProvider {
    static var previews: some View {
        MarketsView()
    }
}
