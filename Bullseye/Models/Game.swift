//
//  Game.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 25.07.21.
//

import Foundation

struct LeaderboardEntry {
    let score: Int
    let date: Date
}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 80, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 1344, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 50, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 475, date: Date()))
        }
    }
    
    func points(sliderValue: Int) -> (Int) {
        let difference = abs(self.target - sliderValue)
        let bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference == 1 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
        //        if difference < 0 {
        //            difference = difference * -1
        //            difference *= -1
        //           difference = -difference
        //        }
        //1 line code: 100 - abs(self.target - sliderValue)
        //no need to write return if it's 1 line
    }
    //mutating, because it changes values inside the struct (e.g. score, round..)
    mutating func startNewRound(point: Int) {
        score += point
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(points: point)
    }
    
    mutating func addToLeaderboard(points: Int) {
        let newEntry = LeaderboardEntry(score: points, date: Date())
        leaderboardEntries.append(newEntry)
        leaderboardEntries.sort { $0.score > $1.score }
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
