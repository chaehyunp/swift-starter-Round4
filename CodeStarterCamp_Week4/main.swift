//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct BodyCondition {
    var upperBodyStrength: Int
    var lowerBodyStrength: Int
    var muscularEndurance: Int
    var fatigueLevel: Int

    mutating func increaseStats(stats: Int, to increaseRangeStart: Int, from increaseRangeEnd: Int) -> Int {
        return stats + (Array(increaseRangeStart...increaseRangeEnd).randomElement() ?? 0)
    }
    
    mutating func decreaseStats(stats: Int, to decreaseRangeStart: Int, from decreaseRangeEnd: Int) -> Int {
        return stats == 0 ? 0 : stats - (Array(decreaseRangeStart...decreaseRangeEnd).randomElement() ?? 0)
    
    }
}

var bodyCondition = BodyCondition(upperBodyStrength: 0, lowerBodyStrength: 0, muscularEndurance: 0, fatigueLevel: 0) {
    willSet {
        print()
    }
}

struct Activity {
    let name: String
    let action: (BodyCondition) -> Void
}

let sitUp = Activity(name: "윗몸일으키기", action: { (BodyCondition) -> () in
    bodyCondition.upperBodyStrength = bodyCondition.increaseStats(stats: bodyCondition.upperBodyStrength, to: 10, from: 20)
})

let squat = Activity(name: "스쿼트", action: { (BodyCondition) -> () in
    bodyCondition.upperBodyStrength = bodyCondition.increaseStats(stats: bodyCondition.upperBodyStrength, to: 10, from: 20)
})

let longRun = Activity(name: "오래달리기", action: { (BodyCondition) -> () in
    bodyCondition.upperBodyStrength = bodyCondition.increaseStats(stats: bodyCondition.upperBodyStrength, to: 10, from: 20)
})

let dynamicRelaxation = Activity(name: "동적 휴식", action: { (BodyCondition) -> () in
    bodyCondition.upperBodyStrength = bodyCondition.increaseStats(stats: bodyCondition.upperBodyStrength, to: 10, from: 20)
})


