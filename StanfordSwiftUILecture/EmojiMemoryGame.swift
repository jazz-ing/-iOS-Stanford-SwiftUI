//
//  EmojiMemoryGame.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/21.
//

import Foundation

class EmojiMemoryGame {
    static let emojis: [String] = [
        "✈️", "🚌", "🚟", "🛵", "⛵️", "🚡", "🚗", "🛻", "🚂", "🛳", "🚉", "🚀", "🛶", "🚁", "🚜", "🚁"
    ]
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}
