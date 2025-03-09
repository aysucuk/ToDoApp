//
//  AddView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 06.03.25.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.dismiss) var dismissScreen
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("Typle something here...",
                          text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color("secondaryColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                
            }
            .padding(15)
        }
        .navigationTitle("Add an Item")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        dismissScreen()
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
