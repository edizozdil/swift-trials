//
//  ViewController.swift
//  MomentFan
//
//  Created by Ediz Ozdil on 15/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var postDateLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        postDateLabel.text = "August 08, 2023"
        locationLabel.text = "Istanbul, Turkiye"
    }


}

