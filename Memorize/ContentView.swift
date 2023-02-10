//
//  ContentView.swift
//  Memorize
//
//  Created by Muhammad Mappanyompa on 2023/02/07.
//

import SwiftUI
//Zstack intro
struct ContentView: View {
    var body: some View {
        return ZStack{
        RoundedRectangle(cornerRadius: 30)
                .stroke(lineWidth:3)
                .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
               
            Text("Hello There, Person!").foregroundColor(.orange)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}












/** This is comment */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

