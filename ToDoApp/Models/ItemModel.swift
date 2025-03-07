//
//  ItemModel.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 07.03.25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
