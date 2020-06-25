//
//  GameState.swift
//  ticTacToe
//
//

import Foundation

class Game {
    var playerOneActive: Bool = true
    var activeGame: Bool = true
    let winningCombo = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    
    func getImage(_ tag: Int) -> String {
        var imageName = ""
            if (playerOneActive) {
                imageName = "cross"
                 }
                 else {
               imageName = "circle"
                 }
            playerOneActive = !playerOneActive
        return imageName
        }
        
    }
    
