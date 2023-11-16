//
//  NewItemView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("Додати нове завдання")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            
            Form {
                // Title
                TextField("Назва", text: $viewModel.title)
                
                // DueDate
                DatePicker("Зробити до", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButtonView(title: "Зберегти", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
                
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Помилка"), message: Text("Введіть не пусту назву та оберіть дату не ранішу, аніж сьогодні."))
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
            
        }))
    }
}
