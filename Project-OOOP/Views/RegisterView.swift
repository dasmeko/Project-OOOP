//
//  RegisterView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title:"Реєстрація", subtitle: "почни планувати вже зараз", background: .green)
            
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage).foregroundColor(Color.red)
            }
            
            Form {
                TextField("ПІБ", text: $viewModel.name).autocorrectionDisabled()
                TextField("Пошта", text: $viewModel.email).textInputAutocapitalization(.none).autocorrectionDisabled()
                SecureField("Пароль", text: $viewModel.password)
                SecureField("Підтведити пароль", text: $viewModel.password2)
                TLButtonView(title: "Створити акаунт", background: .green) {
                    viewModel.register()
                    
                }
            }
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
