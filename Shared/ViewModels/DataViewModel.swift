//
//  ViewModel.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import Foundation
import FirebaseDatabase

//private let ref = Database.database().reference().child("latest").child("markets")
private let ref = Database.database().reference()
private let dbPath = "latest/markets/ADILABAD"
private let coordPath = "locations"

class DataViewModel: ObservableObject {
    @Published var prices = [Price]()
    @Published var markets = [Market]()
    
    init() {
        fetchPrices()
        fetchCoordinates()
    }
    
    func fetchPrices() {
        ref.child(dbPath).observe(.value) { snapshot in
            var items: [Price] = []
            for child in snapshot.children {
//                print(child)
                if let snapshot = child as? DataSnapshot, let item = Price(snapshot: snapshot) {
                    items.append(item)
                }
            }
//            print(items)
            self.prices = items
        }
    }
    
    func fetchCoordinates() {
        ref.child(coordPath).observe(.value) { snapshot in
            var items: [Market] = []
            for child in snapshot.children {
//                print(child)
                if let snapshot = child as? DataSnapshot, let item = Market(snapshot: snapshot) {
                    items.append(item)
                }
            }
//            print(items)
            self.markets = items
        }
    }
}
