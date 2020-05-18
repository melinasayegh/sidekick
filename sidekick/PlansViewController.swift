//
//  PlansViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/17/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class PlansViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tabBarItem.image = UIImage(named: "planInactive")
        self.tabBarItem.selectedImage = UIImage(named: "planActive")
    }
}

