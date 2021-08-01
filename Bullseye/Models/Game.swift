//
//  Game.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 25.07.21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> (Int) {
        let difference = abs(self.target - sliderValue)
//        if difference < 0 {
//            difference = difference * -1
//            difference *= -1
////            difference = -difference
//        }
        let awardedPoints = 100 - difference
        return awardedPoints
        
        //1 line code: 100 - abs(self.target - sliderValue)
        //no need to write return if it's 1 line
    }
}
