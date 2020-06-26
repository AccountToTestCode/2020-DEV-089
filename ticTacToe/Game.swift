//
//  GameState.swift
//  ticTacToe
//
//

import Foundation

class Game {
    var activePlayer: Int = 1
    var isActive: Bool = true
    var winner: Int = 0
    var gameState: Array = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6] ]
    
    func getImage(_ tag: Int) -> String? {
        guard isActive else {
            return nil
        }
        guard gameState[tag-1] == 0  else {
            return nil
        }
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
    
    func setWinner() {
        for combo in winningCombos {
            if (gameState[combo[0]] != 0 && gameState[combo[0]] == gameState[combo[1]] && gameState[combo[1]] ==  gameState[combo[2]] ) {
                isActive = false
                if (gameState[combo[0]] == 1) {
                    winner = 1
                } else {
                    winner = 2
                }
            }
        }
    }
    
    func getWinningMessage() -> String {
        var message = ""
        guard !isActive else {
            return message
        }
        if (winner == 1) {
            message = "Player One has won the game"
        } else {
            message = "Player Two has won the game"
        }
        isActive = false
        return message
        
    }
    
    private func setGameState(_ tag: Int) {
        if (gameState[tag-1] == 0 && isActive == true) {
            gameState[tag-1] = activePlayer
        }
    }
        
}
    
