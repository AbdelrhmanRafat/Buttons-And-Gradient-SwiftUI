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
            .padding()
            .background(Color.red)
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
