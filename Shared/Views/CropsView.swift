//
//  ContentView.swift
//  Shared
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI

struct CropsView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.prices) { price in
                VStack {
                    HStack {
                        Text(price.crop)
                        Spacer()
                        Text("\(Int(price.price)!) ₹/kg")
                    }
                }
            }
            .navigationTitle("Crops")
        }
    }
}

struct CropsView_Previews: PreviewProvider {
    static var previews: some View {
        CropsView()
    }
}
