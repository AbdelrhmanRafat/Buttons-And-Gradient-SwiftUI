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
            ButtonView(BtnTxt: "Share",icon: "square.and.arrow.up")
            ButtonView(BtnTxt: "Edit",icon: "square.and.pencil")
            ButtonView(BtnTxt: "Delete",icon: "trash")
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
            HStack {
                icon.map({
                    Image(systemName: $0)// Using SF Icon
                        .font(.title)// Can Use Text Modifiers with SF Icons.
                })
                Text(BtnTxt)
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}
// Adding Button Style Protocol.
struct GradientBackgroundStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)// Make Button width fill screen.
         .foregroundColor(.white) // Color Button Text and image.
        .padding() // Set Padding
        //Using Custom Color.
        .background(LinearGradient(gradient: Gradient(colors: [Color("LightGreen"), Color("DarkGreen")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .padding(.horizontal,20)
        .shadow(color: .gray, radius: 20, x: 20, y: 20) // Adding Shadow to Button.
    }
}
