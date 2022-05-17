//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["✈️", "🚌", "🚟", "🛵", "⛵️", "🚡", "🚗", "🛻", "🚂", "🛳", "🚉", "🚀", "🛶", "🚁", "🚜", "🚁"]
    var emojiCounts: Int = 6

    var body: some View {
        HStack {
            ForEach(emojis[0..<emojiCounts], id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        .padding()
        .foregroundColor(.blue)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill()
                shape.foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
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
