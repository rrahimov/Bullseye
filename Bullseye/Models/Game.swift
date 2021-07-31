//
//  Game.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 25.07.21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> (Int) {
        return 9
    }
}
