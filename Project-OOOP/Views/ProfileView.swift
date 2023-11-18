//
//  ProfileView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                // info
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Ім'я: ")
                        Text("Дар'я Бабенко")
                    }
                    
                    HStack {
                        Text("Пошта: ")
                        Text("dashadadaday@gmail.com")
                    }
                    
                    HStack {
                        Text("Дата реєстрації: ")
                        Text("10.10.2023")
                    }
                    
                }
                // sign out
                
                TLButtonView(title: "Вийти", background: .red) {
                    viewModel.logOut()
                }
            }
            .navigationTitle("Профіль")
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
