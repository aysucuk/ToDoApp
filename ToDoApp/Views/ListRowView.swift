//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 06.03.25.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
            Text(item.title)
            Spacer()
        }
        .font(.title3)
        .padding(.vertical, 5)
    }
}


#Preview {
    var item1 = ItemModel(title: "First item", isCompleted: true)
    var item2 = ItemModel(title: "Second item", isCompleted: false)
    
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
