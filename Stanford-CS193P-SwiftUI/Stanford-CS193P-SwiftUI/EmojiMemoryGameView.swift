//
//  EmojiMemoryGameView.swift
//  Stanford-CS193P-SwiftUI
//
//  Created by Ranjit on 04/08/20.
//  Copyright © 2020 Ranjit. All rights reserved.
//

import SwiftUI

//MVVM Pattern Followed here
//Characterstics are below
//Model => MemoryGame
//View => EmojiMemoryGameView
//ViewModel => EmojiMemoryGame

struct EmojiMemoryGameView: View {
   @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
