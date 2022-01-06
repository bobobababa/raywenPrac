//
//  Game.swift
//  Bullseye
//
//  Created by ZHENGYI TANG on 30/10/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var totalScore = 0
    var round = 1

    func points(sliderValue: Int) -> Int {
        return 100 - abs(sliderValue - self.target) //可以不要return，因为function里只有一行代码
    }
}
