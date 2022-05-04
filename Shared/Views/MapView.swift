//
//  MapView.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @ObservedObject private var dataViewModel = DataViewModel()
    @StateObject private var mapViewModel = MapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $mapViewModel.region,
            showsUserLocation: true,
            annotationItems: dataViewModel.markets,
            annotationContent: { market in
            MapPin(coordinate: market.coordinate, tint: .red)
        })
        .edgesIgnoringSafeArea(.top)
        .onAppear() {
            mapViewModel.checkIfLocationServicesIsEnabled()
        }

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


