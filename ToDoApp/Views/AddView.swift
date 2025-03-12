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
    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func saveButtonPressed() {
        
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismissScreen()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count <= 3 {
            alertTitle = "Please enter at least 3 characters!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
