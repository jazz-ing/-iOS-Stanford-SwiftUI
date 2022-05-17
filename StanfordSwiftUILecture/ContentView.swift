//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.blue)
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            shape.fill()
            shape.foregroundColor(.white)
            shape.stroke(lineWidth: 3)
            Text("✈️").font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
