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
            XCTAssertEqual(game.isActive, true)
        }
    }
    
}
