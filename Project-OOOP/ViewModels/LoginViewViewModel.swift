//
//  LoginViewViewModel.swift
//  Project-OOOP
//
//  Created by я даша on 05.11.2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,                    !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Заповніть усі поля"
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Введіть правильну пошту"
            return false
        }
        return true
    }
}

