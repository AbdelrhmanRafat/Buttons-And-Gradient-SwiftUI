//
//  ContentView.swift
//  Buttons And Gradient SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Delete Button Tapped")
        }) {
            HStack {
                Image(systemName: "trash")// Using SF Icon
                    .font(.title)// Can Use Text Modifiers with SF Icons.
                    Text("Delete")
                        .font(.title)
                        .fontWeight(.semibold)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .foregroundColor(.white)
            .padding()
            //Using Custom Color.
            .background(LinearGradient(gradient: Gradient(colors: [Color("LightGreen"), Color("DarkGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal,20)
            .shadow(color: .gray, radius: 20, x: 20, y: 20) // Adding Shadow to Button.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
