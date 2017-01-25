//
//  ViewController.swift
//  BabyNamer
//
//  Created by Matt Bonness on 1/24/17.
//  Copyright © 2017 Motorola Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // TODO - connect views to outlets
    @IBOutlet weak var noNameImage: UIImage?
    @IBOutlet weak var nameLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // code here to hide nameLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // TODO - connect button to action
    @IBAction func generateName(sender: AnyObject) {
        // TODO: call factory class to generate name
        // TODO: show name in label
        // TODO: hide the "no name" image
    }
}

