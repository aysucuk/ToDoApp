//
//  NoItemsView.swift
//  ToDoApp
//
//  Created by Aysu Sadıxova on 13.03.25.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate : Bool = false
    
    var body: some View {
     
            VStack(spacing:10) {
                Text("There is no item!")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Are you a productive person? You should click the plus button to add a new item!")
                NavigationLink {
                    AddView()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(animate ? Color("SecondaryAccentColor") : Color.accentColor)
                        .padding()
                        .onAppear(perform: addAnimation)
                }
                .scaleEffect(animate ? 1.1 : 1.0)
                .padding(.bottom, 100)
                    
            }
            .multilineTextAlignment(.center)
            .padding(40)
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NoItemsView()
}
