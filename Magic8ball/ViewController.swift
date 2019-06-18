//
//  ViewController.swift
//  Magic8ball
//
//  Created by Prashant Tripathi on 22/05/19.
//  Copyright © 2019 Prashant Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var magicImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5",]
    
    var randomMagicImage = 0

    @IBOutlet weak var magicImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        magic8Response()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        magic8Response()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        magic8Response()
        
    }
    func magic8Response (){
        randomMagicImage = Int.random(in: 0...4)
        magicImage.image = UIImage(named: magicImageArray[randomMagicImage])
    }
}

