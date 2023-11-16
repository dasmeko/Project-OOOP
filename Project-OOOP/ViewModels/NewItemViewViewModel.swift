//
//  NewItemViewViewModel.swift
//  Project-OOOP
//
//  Created by я даша on 05.11.2023.
//

import Foundation


class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
