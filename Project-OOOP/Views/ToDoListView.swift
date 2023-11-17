//
//  ToDoListView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                }.listStyle(PlainListStyle())
            }
            .navigationTitle("Список ваших справ")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }

            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "J2ZyOkUvVBZ2nt49mjZYzwi88cM2")
    }
}
