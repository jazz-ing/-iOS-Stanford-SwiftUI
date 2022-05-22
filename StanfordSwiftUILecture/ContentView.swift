//
//  ContentView.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            // CardView에서 해주면 안되나?
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
                .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill()
                shape.foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
            .preferredColorScheme(.dark)
        ContentView(viewModel: EmojiMemoryGame())
            .preferredColorScheme(.light)
    }
}
