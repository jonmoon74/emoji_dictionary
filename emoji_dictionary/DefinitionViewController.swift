//
//  DefinitionViewController.swift
//  emoji_dictionary
//
//  Created by Jon Moon on 03/06/2018.
//  Copyright © 2018 Jon Moon. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😇" {
            definitionLabel.text = "I am an angel"
        }
        if emoji == "💩" {
            definitionLabel.text = "I am a poo"
        }
        if emoji == "💀" {
            definitionLabel.text = "I am a skull"
        }
        if emoji == "👹" {
            definitionLabel.text = "I am an ogre"
        }
        if emoji == "🤬" {
            definitionLabel.text = "I am a sweary face"
        }
        if emoji == "👨‍🍳" {
            definitionLabel.text = "I am a chef"
        }
        if emoji == "🐹" {
            definitionLabel.text = "I am a cute hamster"
        }
        if emoji == "🦑" {
            definitionLabel.text = "I am a squid"
        }
        if emoji == "🥨" {
            definitionLabel.text = "I am a pretzel"
        }
        if emoji == "🎱" {
            definitionLabel.text = "I am an eightball"
        }
        if emoji == "🏕" {
            definitionLabel.text = "I am tent"
        }
        if emoji == "🔐" {
            definitionLabel.text = "I am a closed lock and key"
        }
        if emoji == "👽" {
            definitionLabel.text = "I am an alien"
        }
        if emoji == "😀" {
            definitionLabel.text = "I am happy"
        }
        if emoji == "💒" {
            definitionLabel.text = "I am a wedding symbol"
        }
        if emoji == "🗜" {
            definitionLabel.text = "I am a clamp"
        }
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
