//
//  BackgroundVIew.swift
//  Bullseye
//
//  Created by ZHENGYI TANG on 10/1/22.
//

import SwiftUI

struct BackgroundVIew: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor")
                        .edgesIgnoringSafeArea(.all))
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            Button(action: {
                game.restart()
            }) {
                RoundedImageViewsStroke(systemName: "arrow.counterclockwise")
            }
            Spacer()
            RoundedImageViewsFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack (spacing: 5) {
            LabelText(text: title.uppercased())
            RoundRectTextView(text: text)
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.totalScore))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct BackgroundVIew_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundVIew(game: .constant(Game()))
    }
}
