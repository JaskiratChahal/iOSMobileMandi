//
//  Utils.swift
//  MobileMandi
//
//  Created by Jaskirat Chahal on 02/05/2022.
//

//import Foundation

extension String {
    func toTitleCase() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func toTitleCase() {
        self = self.toTitleCase()
    }
}

public let imageMap = [
    "Atta" : "atta",
    "Gram Dal" : "gram_dal",
    "Groundnut Oil" : "groundnut_oil",
    "Gur" : "gur",
    "Loose Tea" : "loose_tea",
    "Masoor Dal" : "masoor_dal",
    "Milk" : "milk",
    "Moong Dal" : "moong_dal",
    "Mustard Oil" : "mustard_oil",
    "Onion" : "onion",
    "Palm Oil" : "palm_oil",
    "Potato" : "potato",
    "Rice" : "rice",
    "Salt" : "salt",
    "Soya Oil" : "soybean_oil",
    "Sugar" : "sugar",
    "Sunflower Oil" : "sunflower_oil",
    "Tomato" : "tomato",
    "Tur-Arhar Dal" : "toor_arhar_dal",
    "Urad Dal" : "urad_dal",
    "Vanaspati" : "vanaspati",
    "Wheat" : "wheat"
]
