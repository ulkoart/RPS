//
//  Sign.swift
//  RPS
//
//  Created by user on 02/12/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji : String {
        switch self {
        case .paper:
            return "👋"
        case .rock:
            return "👊"
        case .scissors:
            return "✌️"
        }
    }
    
    func getResult(_ oposite: Sign) -> GameState {
        switch (self, oposite) {
        case (.rock, .rock),
             (.paper, .paper),
             (.scissors, .scissors):
            return .draw
        case (.rock, .scissors),
             (.paper, .rock),
             (.scissors, .paper):
            return .win
        default:
            return .lose
        }
        
        //        switch self {
        //        case .rock:
        //            switch oposite {
        //            case .rock:
        //                return .draw
        //            case .paper:
        //                return .lose
        //            case .scissors:
        //                return .win
        //            }
        //
        //        case .paper:
        //            switch oposite {
        //            case .paper:
        //                return .draw
        //            case .rock:
        //                return .win
        //            case .scissors:
        //                return .lose
        //            }
        //
        //        case .scissors:
        //            switch oposite {
        //            case .paper:
        //                return .win
        //            case .rock:
        //                return .lose
        //            case .scissors:
        //                return .draw
        //            }
        //
        //        }
        
    }
    
}
