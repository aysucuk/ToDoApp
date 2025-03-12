//
//  ListViewModel.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 07.03.25.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()

    }
    
    func getItems() {
        let nemItems = [
            ItemModel(title: "It is first item", isCompleted: true),
            ItemModel(title: "It is second item", isCompleted: false),
            ItemModel(title: "It is third item", isCompleted: true),
        ]
        items.append(contentsOf: nemItems)
    }
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
}
