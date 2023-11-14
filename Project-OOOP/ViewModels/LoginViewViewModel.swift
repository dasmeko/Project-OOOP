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
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,                    !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Заповніть усі поля"
            
            return
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Введіть правильну пошту"
            return
        }
    }
    
    func validate() {
        
    }
}

