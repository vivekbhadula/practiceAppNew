//
//  ViewController.swift
//  PracticeApp
//
//  Created by Vivek Bhadula on 17/02/21.
//

//This is a practice app that I am creating after gaining some knowledge about Xcode and its storyboard features. The App's name is Decider. For example, we are in a bind what to do, what to eat or which type of music to listen to. That is where this app comes in. One can choose from the two options they are confused in, simply by clicking the "Choose" button. The result will be displayed at the bottom. As it's a basic app for now, the options can't be inputted. But instead, in your mind, you can name option 1 as whatever you want and similarly with option 2. After clicking on the "Choose" button, either "1" or "2" will be displayed.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeImage: UIImageView!
    @IBOutlet weak var mainBG: UIImageView!
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        changeImage.alpha = 1
        changeImage.image = [#imageLiteral(resourceName: "practiceApp1"), #imageLiteral(resourceName: "practiceApp2")][Int.random(in: 0...1)]
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        changeImage.alpha = 0 //fade to 0. Added comment to check if commit shows on github.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainBG.image = #imageLiteral(resourceName: "practiceApp")
    }


}

