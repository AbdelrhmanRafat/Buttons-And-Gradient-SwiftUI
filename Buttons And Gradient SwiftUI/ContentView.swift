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
            .foregroundColor(.white)
            .padding(40)
          //  .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow,Color.green]), startPoint: .top, endPoint: .bottom)) // Choose Start Point and End Point.and Also Any Colors you need.
            .cornerRadius(70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
