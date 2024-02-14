//
//  RootView.swift
//  FirebaseBootcamp
//
//  Created by Bruno Amorim on 14/02/24.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                Text("Settings")
            }
        }
        
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            
            self.showSignInView = authUser == nil
        }
        
        .fullScreenCover(isPresented: $showSignInView, content: {
            NavigationStack {
                AuthenticationView()
            }
        })
    }
}

#Preview {
    RootView()
}
