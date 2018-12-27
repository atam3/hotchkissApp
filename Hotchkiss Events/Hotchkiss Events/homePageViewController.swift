//
//  homePageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 12/27/18.
//  Copyright © 2018 Alex Tam. All rights reserved.
//

import UIKit
class homePageViewController:UIViewController
{
    @IBOutlet weak var athleticsButton: UIButton?
    override func viewDidAppear(_ animated: Bool)
    {
        athleticsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
        
        athleticsButton?.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }
    @objc func buttonTap()
    {
        print ("hello")
    }
    
}
