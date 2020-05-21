//
//  HomeViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/17/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // set images for Home tab icon
        self.tabBarItem.image = UIImage(named: "homeInactive")
        self.tabBarItem.selectedImage = UIImage(named: "homeActive")
        
    }
    
    @IBAction func goHome(_ segue: UIStoryboardSegue) {
    }

}
