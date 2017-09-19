//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Maggie on 2017-09-16.
//  Copyright © 2017 Maggie. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var bigemoji: UILabel!
    
    @IBOutlet weak var deftext: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var year: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigemoji.text = emoji.icon
        year.text = "Birth Year: \(emoji.year)"
        category.text = "Category: \(emoji.category)"
        deftext.text = "\(emoji.def)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    
    
}















