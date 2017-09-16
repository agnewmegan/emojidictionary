//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Maggie on 2017-09-16.
//  Copyright © 2017 Maggie. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    @IBOutlet weak var bigemoji: UILabel!
    
    @IBOutlet weak var deftext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigemoji.text = emoji
        
        if emoji == "😍" {deftext.text = "Heart eyes"}
        if emoji == "🦊" {deftext.text = "Fox"}
        if emoji == "🐾" {deftext.text = "Paw prints"}
        if emoji == "😘" {deftext.text = "Kissy face"}
        if emoji == "💕" {deftext.text = "Two hearts"}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
