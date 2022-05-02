//
//  MapView.swift
//  Executive Timer
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @ObservedObject var viewModel = ViewModel()
    @State private var region: MKCoordinateRegion =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25, longitude: 82), span: MKCoordinateSpan(latitudeDelta: 28, longitudeDelta: 28))
    
    var body: some View {
        Map(coordinateRegion: $region,
            showsUserLocation: true,
            annotationItems: viewModel.markets,
            annotationContent: { market in
            MapPin(coordinate: market.coordinate, tint: .red)
        })
//            .edgesIgnoringSafeArea(.all)

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
