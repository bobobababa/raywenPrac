//
//  Shapes.swift
//  Bullseye
//
//  Created by ZHENGYI TANG on 10/1/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
//                .fill(Color.blue)
                .strokeBorder(Color.blue, lineWidth: 20, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
