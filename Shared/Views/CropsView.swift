//
//  ContentView.swift
//  Shared
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI

struct CropsView: View {
    @ObservedObject var dataViewModel = DataViewModel()
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: columns, spacing: 50) {
                    ForEach(dataViewModel.prices) {price in
                        ItemView(crop: price.crop, price: price.price)
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle(dataViewModel.queriedMarket.toTitleCase())
        }
    }
}



private struct ItemView: View {
    var crop: String
    var price: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(imageMap[crop]!)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(20)
                
            HStack {
                VStack(alignment: .leading) {
                    
                    Text(crop)
                        .font(.headline)
                    
                    HStack {
                            
                        Text("\(Int(price)!)")
                            .font(.subheadline)
                        Spacer()
                        Text(" ₹/kg")
                    }
                }
                Spacer()
                
            }
            .padding(.leading,15)
            .padding([.top, .bottom], 5)
            .padding(.trailing, 10)
            .foregroundColor(.primary)
            .background(Color.primary.colorInvert().opacity(0.75))
        }
    }
}

struct CropsView_Previews: PreviewProvider {
    static var previews: some View {
        CropsView()
    }
}
