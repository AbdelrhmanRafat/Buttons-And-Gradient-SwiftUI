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
            print("Hello World")
        }) {
            Text("Hello World")
                .padding() // Add Padding Before Background Color. The Modifiers order is very Important...
                .background(Color.purple) // Change the background color to purple
                .foregroundColor(.white)
                // set font color to white
                .font(.title)
                // change the font type
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
