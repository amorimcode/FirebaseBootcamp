//
//  FirebaseBootcampApp.swift
//  FirebaseBootcamp
//
//  Created by Bruno Amorim on 12/02/24.
//

import SwiftUI
import Firebase

@main
struct FirebaseBootcampApp: App {
    
    init () {
        FirebaseApp.configure()
        print("Configured firebase!")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                AuthenticationView()
            }
        }
    }
}
