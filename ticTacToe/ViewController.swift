//
//  ViewController.swift
//  ticTacToe
//
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func action(_ sender: UIButton) {
        guard let imageName = game.getImage(sender.tag) else {
            return
        }
        sender.setImage(UIImage(named: imageName), for: .normal)
        
        game.setWinner()
        
        label.text = game.getWinningMessage()

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

