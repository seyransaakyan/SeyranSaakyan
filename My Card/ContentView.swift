//
//  ContentView.swift
//  My Card
//
//  Created by Seyran Saakyan on 20.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.91, green: 0.30, blue: 0.24).ignoresSafeArea()
            VStack {
                Image("avatar").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 250.0, height: 250.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 3))
                Text("Seyran Saakyan")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("iOS Developer")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+79955005712")
                Card(image: "envelope.fill", message: "hajimesay@gmail.com")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame( height: 60).overlay(HStack {Image(systemName: image)
            Text(message)
                .fontWeight(.bold)
        }.foregroundColor(Color(red: 0.91, green: 0.30, blue: 0.24)))
    }
}
