//
//  RegisterViewViewModel.swift
//  Project-OOOP
//
//  Created by я даша on 05.11.2023.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var password2 = ""
    @Published var errorMessage = ""
    init () {}
    
    func register() {
        guard validate() else {
            return
        }
        
            Auth.auth().createUser(withEmail: email, password: password) { [weak self]result, error in
                guard let userId = result?.user.uid else {
                    return
                }
                self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users").document(id).setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,  !email.trimmingCharacters(in: .whitespaces).isEmpty,                    !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Поля мають бути не пустими"
            return false
            
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Введіть правильну пошту"
            return false
            
        }
        
        guard password.count >= 8 else {
            errorMessage = "Пароль має містити більше 8 символів"
            return false
            
        }
        
        guard password == password2 else {
            errorMessage = "Паролі не співпадають"
            return false
            
        }
        return true
        
    }
}
