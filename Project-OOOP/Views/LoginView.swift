//
//  LoginView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Список справ", subtitle: "пам'ятай про усі справи")
            // Login form
            Form {
                TextField("Пошта", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Пароль", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                   // Attempt log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                        Text("Увійти").foregroundColor(Color.white).bold()
                    }
                }

            }
            // Create accout
            VStack {
                Text("Ще не зареєстровані?")
                NavigationLink("Створити акаунт", destination: RegisterView())
            }
            .padding(.bottom, 40)
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
