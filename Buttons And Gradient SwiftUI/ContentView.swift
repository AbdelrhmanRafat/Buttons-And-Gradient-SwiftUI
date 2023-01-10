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
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
                .padding() // Set Padding For Set Background Color.
                .background(Color.purple)
                .padding(10)// Add More Padding to Add Border for the Button.
                .border(Color.purple, width: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
