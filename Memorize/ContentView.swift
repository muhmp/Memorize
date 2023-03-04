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
    
    //reconstruct "emoji" by defining string
    var content : String
    
    //Zstack for the content
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
                    //Text("✈️").font(.largeTitle)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


//Content View
struct ContentView: View {
    //reconstruct "emoji" by defining array
    var emojis = ["🚄","🚆","🛫","🚀","🚁","🛸","🛥️","🛵","🚲","🚚","🚗","🚙","🏎️","🚤","✈️","🚃"]
    
    @State var emojiCount = 4
    
    //HStack for the horizon cards
    var body: some View {
        //combine Vstack and Hstack
        VStack{
            HStack{
                ForEach(emojis[..<emojiCount],id: \.self){
                    emojis in CardView(content: emojis)
                }
            }
            
            //Button increase decrease with param action and label
            
            //HStack remove
            HStack{
                // Button for remove an emoji
                Button(action:{
                    emojiCount -= 1
                },label:{
                    VStack{
                        Text("Remove")
                        Text("Card")
                    }
                })
                
                // Button for adding an emoji
                Button(action:{
                    emojiCount += 1
                },label:{
                    VStack{
                        Text("Add")
                        Text("Card")
                    }
                })
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
    
}
