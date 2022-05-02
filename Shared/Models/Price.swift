//
//  Price.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 02/05/2022.
//

import Foundation
import FirebaseDatabase

struct Price: Codable, Identifiable {
    var id = UUID().uuidString
    var crop: String
    var price: String
    
    init(crop: String, price: String) {
        self.crop = crop
        self.price = price
    }
    
    init?(snapshot: DataSnapshot) {
        self.crop = snapshot.key
        self.price = snapshot.value as! String
    }
}
