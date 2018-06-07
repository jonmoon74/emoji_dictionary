//
//  ViewController.swift
//  emoji_dictionary
//
//  Created by Jon Moon on 31/05/2018.
//  Copyright © 2018 Jon Moon. All rights reserved.
//

import UIKit

//need to make sure view controller below includes Datasource and delegate references
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    //set up the array of emojis to call later
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // refers code to parameters of self in viewcontroller class above
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    //required by tableview to set number of rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    // required by tableview to know what to show in each row/cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray () -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.definition = "A angelic face"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji="💩"
        emoji2.definition = "A poo face"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji="🐹"
        emoji3.definition = "A cute hamster"
        emoji3.category = "Animals"
        emoji3.birthYear = 2014
        
        let emoji4 = Emoji()
        emoji4.stringEmoji="💀"
        emoji4.definition = "A skull face"
        emoji4.category = "People"
        emoji4.birthYear = 2016
        
        let emoji5 = Emoji()
        emoji5.stringEmoji="🤬"
        emoji5.definition = "A sweary face"
        emoji5.category = "Smiley"
        emoji5.birthYear = 2010
        
        let emoji6 = Emoji()
        emoji6.stringEmoji="🦑"
        emoji6.definition = "A squid"
        emoji6.category = "Animals"
        emoji6.birthYear = 2014
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

