//
//  ListView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 06.03.25.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .navigationTitle(Text("To Do List"))
        .toolbar {
            ToolbarItem(placement: .topBarLeading){
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add",
                               destination: AddView())
            }
        }
        
    }
    
}

#Preview {
    NavigationStack{
        ListView()
    }
    .environmentObject(ListViewModel())
    
}

