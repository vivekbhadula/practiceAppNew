//
//  ViewController.swift
//  PracticeApp
//
//  Created by Vivek Bhadula on 17/02/21.
//

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

