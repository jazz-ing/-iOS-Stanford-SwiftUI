//
//  EmojiMemoryGame.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/21.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    static let emojis: [String] = [
        "✈️", "🚌", "🚟", "🛵", "⛵️", "🚡", "🚗", "🛻", "🚂", "🛳", "🚉", "🚀", "🛶", "🚁", "🚜", "🚁"
    ]

    @Published private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsCards: 4) { pairIndex in
        emojis[pairIndex]
    }

    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }

    // MARK: - User Intent(s)

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
