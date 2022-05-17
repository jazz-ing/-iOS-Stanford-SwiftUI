//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["✈️", "🚌", "🚟", "🛵", "⛵️", "🚡", "🚗", "🛻", "🚂", "🛳", "🚉", "🚀", "🛶", "🚁", "🚜", "🚁"]
    @State var emojiCounts: Int = 6

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(emojis[0..<emojiCounts], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.yellow)
            }
            Spacer(minLength: 20)
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
        }
        .padding()
    }
    
    var add: some View {
        Button {
            if emojiCounts < emojis.count {
                emojiCounts += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }

    }
    
    var remove: some View {
        Button {
            if emojis.count > 1 {
                emojiCounts -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }

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
                shape.strokeBorder(lineWidth: 3)
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
