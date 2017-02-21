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
    @IBOutlet weak var noNameImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // code here to hide nameLabel
        nameLabel?.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // TODO - connect button to action
    @IBAction func generateName(sender: UISegmentedControl) {
        // TODO: call factory class to generate name
        var n = ""
        switch sender.selectedSegmentIndex {
            
        case 0:
            n = ((BabyNameFactory().generateNameForGender(gender: .Male))?.getName())!
            break
            
        case 1:
            n = ((BabyNameFactory().generateNameForGender(gender: .Female))?.getName())!
            break
            
        case 2:
            n = ""
            break
            
        default:
            break
        }
        // TODO: show name in label
            nameLabel?.isHidden = false
            nameLabel?.text = n

        // TODO: hide the "no name" image
        noNameImage.isHidden = true
    }
}

