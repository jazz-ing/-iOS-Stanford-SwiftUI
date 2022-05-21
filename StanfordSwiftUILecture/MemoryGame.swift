//
//  MemoryGame.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card] = []

    func choose(_ card: Card) {

    }

    init(numberOfPairsCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairsCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }

    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        var id: Int
    }
}
