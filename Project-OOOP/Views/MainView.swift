//
//  MainView.swift
//  Project-OOOP
//
//  Created by я даша on 05.11.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                // signed in
                TabView {
                    ToDoListView().tabItem {
                        Label("Головна", systemImage: "house")
                    }
                    
                    ProfileView().tabItem {
                        Label("Профіль", systemImage: "person.circle")
                    }
                    
                }
            } else {
                LoginView()
            }
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
