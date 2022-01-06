//
//  ContentView.swift
//  Bullseye
//
//  Created by ZHENGYI TANG on 27/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🤩🤩🤩\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0) //可以不加self
                Text("100")
                    .bold()
            }
            Button(action: {
                alertIsVisible = true
            }) {
                Text("HIT ME")
            }
                .background(Color.blue)
                .foregroundColor(.white)
                .alert(isPresented: $alertIsVisible,
                       content: {
                        let roundingValue = Int(self.sliderValue.rounded())  //可以不加self
                    return Alert(
                        title: Text("hello"),
                        message: Text("The slider value is \(roundingValue). \n"
                                        + "The score is \(game.points(sliderValue: roundingValue))"
                        ),
                        dismissButton: .default(Text("Great")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
