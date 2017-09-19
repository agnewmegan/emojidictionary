//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Maggie on 2017-09-16.
//  Copyright © 2017 Maggie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tablething: UITableView!
    
    var emojis:[Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tablething.dataSource = self
        tablething.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.icon
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DefVC = segue.destination as! DefinitionViewController
        DefVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.icon = "😍"
        emoji1.category = "People"
        emoji1.year = 2011
        emoji1.def = "Heart eyes"
        
        let emoji2 = Emoji()
        emoji2.icon = "🦊"
        emoji2.category = "Animals"
        emoji2.year = 2016
        emoji2.def = "Fox"
        
        let emoji3 = Emoji()
        emoji3.icon = "💕"
        emoji3.category = "Things"
        emoji3.year = 2015
        emoji3.def = "Two hearts"
        
        let emoji4 = Emoji()
        emoji4.icon = "🐾"
        emoji4.category = "Animals"
        emoji4.year = 2011
        emoji4.def = "Paw prints"
        
        let emoji5 = Emoji()
        emoji5.icon = "😘"
        emoji5.category = "People"
        emoji5.year = 2011
        emoji5.def = "Kissy face"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
    }

}

