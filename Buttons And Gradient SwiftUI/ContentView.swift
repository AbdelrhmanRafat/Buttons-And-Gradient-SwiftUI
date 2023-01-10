//
//  ContentView.swift
//  Buttons And Gradient SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ButtonView(BtnTxt: "", icon: "plus")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    var BtnTxt : String
    var icon : String?
    var body: some View {
        Button(action: {
            print(BtnTxt + " Button Tapped")
        }) {
                 icon.map({
                    Image(systemName: $0)// Using SF Icon
                        .font(.title)// Can Use Text Modifiers with SF Icons.
                })
            
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}
// Adding Button Style Protocol.
struct GradientBackgroundStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.foregroundColor(.white)
            .font(.largeTitle)
            .padding(40)
            .background(Color.purple)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle(degrees: 45.0) : .zero) //Rotation Effect.
    }
}
