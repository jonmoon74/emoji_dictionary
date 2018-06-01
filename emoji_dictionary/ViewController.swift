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
    var emojis = ["😇","💩","💀","👹","🤬","😀","👨‍🍳","🐹","🦑","🥨","🎱","🏕","🔐","👽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // refers code to parameters of self in viewcontroller class above
        tableview.dataSource = self
        tableview.delegate = self
        
    }
    
    //required by tableview to set number of rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    // required by tableview to know what to show in each row/cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

