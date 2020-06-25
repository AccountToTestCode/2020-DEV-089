//
//  GameTests.swift
//  ticTacToeTests
//
//

@testable import ticTacToe
import XCTest

class GameTests: XCTestCase {
    
    func testGetImage() {
        let game = Game()
        for tag in 1...9 {
            if (tag % 2 == 0) {
                XCTAssertEqual(game.getImage(tag), "circle")
            } else {
                XCTAssertEqual(game.getImage(tag), "cross")
            }
            XCTAssertNil(game.getImage(tag))
        }
    }
    
    func testSetWinner() {
        let game = Game()
        for combo in game.winningCombos {
            if (game.gameState[combo[0]] != 0 && game.gameState[combo[0]] ==  game.gameState[combo[1]] &&  game.gameState[combo[1]] ==  game.gameState[combo[2]] ) {
                XCTAssertEqual(game.isActive, false)
            }
            if (game.gameState[combo[0]] == 1) {
                XCTAssertEqual(game.winner, game.activePlayer)
            }
        }
    }
    
}
