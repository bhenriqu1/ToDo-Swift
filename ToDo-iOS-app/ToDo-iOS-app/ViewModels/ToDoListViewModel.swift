//
//  ToDoListViewModel.swift
//  ToDo-iOS-app
//
//  Created by Brenda Henriquez on 12/22/23.
//
import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users-new-3")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
