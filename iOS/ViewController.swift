//
//  ViewController.swift
//  iOS
//
//  Created by Di Paula on 5/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func changeLabelColor(_ sender: UIButton) {
        labelOne.textColor = generateRandomColor()
        labelTwo.textColor = generateRandomColor()
        labelThree.textColor = generateRandomColor()
    }
    
    func generateRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
    }
    
}

