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
