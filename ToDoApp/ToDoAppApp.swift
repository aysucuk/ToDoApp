//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 05.03.25.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
