//
//  EmojiMemoryGame.swift
//  Stanford-CS193P-SwiftUI
//
//  Created by Ranjit on 07/08/20.
//  Copyright © 2020 Ranjit. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃","🕷"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
