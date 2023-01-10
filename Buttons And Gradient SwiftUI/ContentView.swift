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
                .cornerRadius(40) // Corner Redius Modifier Comes After Background Color.
                .padding(10) // Set more Padding to Add Rounded Rectangle in it.
                .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.purple, lineWidth: 5)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
