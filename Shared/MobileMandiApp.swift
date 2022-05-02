//
//  MobileMandiApp.swift
//  Shared
//
//  Created by Jaskirat Chahal on 01/05/2022.
//

import SwiftUI
import Firebase

@main
struct MobileMandiApp: App {
    init() {
        FirebaseApp.configure()
        Database.database().isPersistenceEnabled = true
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
