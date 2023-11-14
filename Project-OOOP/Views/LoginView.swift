//
//  LoginView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Список справ", subtitle: "пам'ятай про усі справи", background: .blue)
            // Login form
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage).foregroundColor(Color.red)
            }
            
            Form {
                TextField("Пошта", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).textInputAutocapitalization(.none).autocorrectionDisabled()
                SecureField("Пароль", text: $viewModel.password).textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButtonView(title: "Увійти", background: .blue) {
                    viewModel.login()
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
