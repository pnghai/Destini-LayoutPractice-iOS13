//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLbl: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    var positionNumber = 0
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func choicePressed(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    @objc func updateUI(){
        storyLbl.text = storyBrain.getStoryTitle()
        choice1Btn.setTitle(storyBrain.getStoryChoice(1), for: .normal)
        choice2Btn.setTitle(storyBrain.getStoryChoice(2), for: .normal)
    }
}

