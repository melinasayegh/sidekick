//
//  ProfileViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tabBarItem.image = UIImage(named: "profileInactive")
        self.tabBarItem.selectedImage = UIImage(named: "profileActive")
        
        // resize tab bar icon
        
    }


}
