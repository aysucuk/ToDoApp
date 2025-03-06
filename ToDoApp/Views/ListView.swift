//
//  ListView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 06.03.25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        @State var items: [String] = [
            "firts item",
            "second item",
            "third item"
        ]
        
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
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
    
}

