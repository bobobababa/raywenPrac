//
//  RoundedViews.swift
//  Bullseye
//
//  Created by ZHENGYI TANG on 10/1/22.
//

import SwiftUI

struct RoundedImageViewsStroke: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewsFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .kerning(-0.2)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .frame(width: 68, height: 56)
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack (spacing: 10) {
            RoundedImageViewsStroke(systemName: "arrow.counterclockwise")
            RoundedImageViewsFilled(systemName: "list.dash")
            RoundRectTextView(text: "123")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
