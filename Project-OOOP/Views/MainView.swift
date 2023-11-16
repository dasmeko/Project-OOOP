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
                accountView
            } else {
                LoginView()
            }
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId).tabItem {
                Label("Головна", systemImage: "house")
            }
            
            ProfileView().tabItem {
                Label("Профіль", systemImage: "person.circle")
            }
    }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
