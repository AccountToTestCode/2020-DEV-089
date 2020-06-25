//
//  GameState.swift
//  ticTacToe
//
//

import Foundation

class Game {
    var activePlayer: Int = 1
    var isActive: Bool = true
    var gameState: Array = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombos = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    
    func getImage(_ tag: Int) -> String {
        setGameState(tag)
        var imageName = ""
            if (activePlayer == 1) {
                imageName = "cross"
                activePlayer = 2
                 }
                 else {
               imageName = "circle"
                activePlayer = 1
                 }
        return imageName
        }
    
    
    private func setGameState(_ tag: Int) {
        if (gameState[tag-1] == 0 && isActive == true) {
            gameState[tag-1] = activePlayer
        }
    }
        
    }
    
