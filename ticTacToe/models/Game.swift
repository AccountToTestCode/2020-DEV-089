//
//  GameState.swift
//  ticTacToe
//
//

import Foundation
import UIKit

class Game {
    var playerOneActive: Bool = true
    var activeGame: Bool = true
    let winningCombo = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    
    func setImage(_ sender: UIButton) {
        if (playerOneActive) {
                 sender.setImage(UIImage(named: "cross"), for: .selected)
             }
             else {
                 sender.setImage(UIImage(named: "circle"), for: .selected)
             }
            playerOneActive = !playerOneActive
    }
    
}
