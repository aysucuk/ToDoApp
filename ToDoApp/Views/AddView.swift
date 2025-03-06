//
//  AddView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 06.03.25.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        
        @State var textFieldText : String = ""
        
        ScrollView {
            VStack {
                TextField("Typle something here...",
                          text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color("secondaryColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    
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
}

#Preview {
    NavigationStack{
        AddView()
    }
    
}
