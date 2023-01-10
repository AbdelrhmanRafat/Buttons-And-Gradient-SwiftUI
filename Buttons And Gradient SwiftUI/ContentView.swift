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
            Image(systemName: "trash")// Using SF Icon
                .font(.largeTitle)// Can Use Text Modifiers with SF Icons.
                .foregroundColor(.white) // Set Image Name.
                .padding()// Set Padding To make Image be in the middle of background color
                .background(Color.red)
                .clipShape(Circle()) // Adding Clip Shape to Image.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
