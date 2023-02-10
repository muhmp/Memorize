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
    var isFaceUp: Bool = true
    
    //Zstack
    var body: some View {
        ZStack {
            //if condition for face up
            if isFaceUp {
                //RoundedRectangle 1 inside
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                
                //RoundedRectangle 2 outside
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth:10)
                Text("✈️")
                    .font(.largeTitle)
                
            } else {
                //RoundRectangle only
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
        }
    }
}


//Zstack
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

