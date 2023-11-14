//
//  RegisterView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct RegisterView: View {
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title:"Реєстрація", subtitle: "почни планувати вже зараз", background: .green)
            
            Form {
                TextField("ПІБ", text: $name).autocorrectionDisabled()
                TextField("Пошта", text: $email).textInputAutocapitalization(.none).autocorrectionDisabled()
                SecureField("Пароль", text: $password)
                
                TLButtonView(title: "Створити акаунт", background: .green) {
                    // Attempt registration
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
