//
//  ContentView.swift
//  Memorize
//
//  Created by Muhammad Mappanyompa on 2023/02/07.
//

import SwiftUI


//Card view
struct CardView : View {
    
    //define the faceup
    @State var isFaceUp: Bool = true
    
    //Zstack
    var body: some View {
        ZStack {
            //variable shape
            let shape = RoundedRectangle(cornerRadius: 20)
            //if condition for face up
            if isFaceUp {
                //RoundedRectangle 1 inside
                RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.stroke(lineWidth:3)
                    Text("✈️").font(.largeTitle)
                
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


//HStack
struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}










/** Contentview previews */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}

