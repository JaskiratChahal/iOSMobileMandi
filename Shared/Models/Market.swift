//
//  Market.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 02/05/2022.
//

import Foundation
import FirebaseDatabase
import CoreLocation

struct Market: Codable, Identifiable {
    var id = UUID().uuidString
    var name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init?(snapshot: DataSnapshot) {
        self.name = snapshot.key
        let coordString = snapshot.value as! String
        let array = coordString.components(separatedBy: ", ")
        self.latitude = Double(array[0])!
        self.longitude = Double(array[1])!
    }
}
