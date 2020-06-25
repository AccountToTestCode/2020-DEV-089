//
//  ViewController.swift
//  ticTacToe
//
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    
    @IBAction func action(_ sender: UIButton) {
        guard !sender.isSelected  else {
            return
        }
        sender.isSelected = true
        
        game.setImage(sender)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

