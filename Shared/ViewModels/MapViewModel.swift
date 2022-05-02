//
//  MapViewModel.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 02/05/2022.
//

import MapKit

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 25, longitude: 82)
    static let indiaSpan = MKCoordinateSpan(latitudeDelta: 28, longitudeDelta: 28)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region: MKCoordinateRegion =
    MKCoordinateRegion(center: MapDetails.startingLocation, span: MapDetails.indiaSpan)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            
            //unwrap optional using guard let
            guard let locationManager = locationManager else { return }
            locationManager.delegate = self
            
        } else {
            print("Location Services not enabled.")
        }
    }
    
    private func checkLocationAuthorisation() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            case .restricted:
                print("Location is restricted.")
            case .denied:
                print("Location is denied.")
            case .authorizedAlways, .authorizedWhenInUse:
                guard let coordinate: CLLocationCoordinate2D = locationManager.location?.coordinate else { return }
                region = MKCoordinateRegion(center: coordinate, span: MapDetails.defaultSpan)
            @unknown default:
                break
            }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorisation()
    }
}
