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
                .background(Color.purple) // Change the background color to purple
                .foregroundColor(.white)
                // set font color to white
                .font(.title)
                // change the font type
                .padding()
            // Add the paddings with the primary color.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
