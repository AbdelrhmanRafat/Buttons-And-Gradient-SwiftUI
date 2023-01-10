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
                .foregroundColor(.purple)
                // set font color to white
                .font(.title)
                // change the font type
                .padding(20) // The More Padding Value More Border Perimeter Gets bigger..
                .border(Color.purple, width: 5) // Border For Button.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
