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
                MarketItemView(market: market)
            }
            .navigationTitle("Markets")
        }
    }
}

struct MarketItemView: View {
    var market: Market
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: CropItemView(dataViewModel: DataViewModel(queriedMarket: market.name)), label: {
                
                    Text(market.name.toTitleCase())
                    Spacer()
                    Text(String(market.latitude) + " " + String(market.longitude))
                })
            }
        }
    }
}

struct MarketsView_Previews: PreviewProvider {
    static var previews: some View {
        MarketsView()
    }
}
