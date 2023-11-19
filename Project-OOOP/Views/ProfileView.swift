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
                    .padding()
                // info
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Ім'я: ").bold()
                        Text("Дар'я Бабенко")
                    }.padding()
                    
                    HStack {
                        Text("Пошта: ").bold()
                        Text("dashadadaday@gmail.com")
                    }
                    .padding()
                    HStack {
                        Text("Дата реєстрації: ").bold()
                        Text("10.10.2023")
                    }.padding()
                    
                }
                .padding()
                // sign out
                
                Button("Вийти") {
                    viewModel.logOut()
                }.tint(Color.red)
                    .padding()
                    
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
