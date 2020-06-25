//
//  ViewController.swift
//  ticTacToe
//
//

import UIKit

class ViewController: UIViewController {
    
    var playerOne = true
    
    @IBAction func action(_ sender: UIButton) {
        guard !sender.isSelected  else {
            return
        }
        sender.isSelected = true
        
        if (playerOne) {
            sender.setImage(UIImage(named: "cross"), for: .selected)
        }
        else {
            sender.setImage(UIImage(named: "circle"), for: .selected)
        }
        
        playerOne = !playerOne
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

