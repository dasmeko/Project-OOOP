//
//  NewItemView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("Додати нове завдання")
                .font(.system(size: 32))
                .bold()
            
            
            Form {
                // Title
                TextField("Назва", text: $viewModel.title)
                
                // DueDate
                DatePicker("Зробити до", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButtonView(title: "Зберегти", background: .pink) {
                    viewModel.save()
                }
                .padding()
                
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
