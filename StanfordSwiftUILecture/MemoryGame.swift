//
//  MemoryGame.swift
//  StanfordSwiftUILecture
//
//  Created by 이윤주 on 2022/05/21.
//

import Foundation

struct MemoryGame<CardContent> {
    let cards: [Card]
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
