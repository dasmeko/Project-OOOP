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
                if let user = viewModel.user {
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
                            Text(user.name)
                        }.padding()
                        
                        HStack {
                            Text("Пошта: ").bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack {
                            Text("Дата реєстрації: ").bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .numeric, time: .shortened))")
                        }.padding()
                        
                    }
                    .padding()
                    // sign out
                    
                    Button("Вийти") {
                        viewModel.logOut()
                    }.tint(Color.red)
                        .padding()
                        
                    Spacer()
           } else {
                    Text("Завантаження профілю...")
                }
            }
            .navigationTitle("Профіль")
            
        }
        .onAppear {
            viewModel.fetchUser()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
