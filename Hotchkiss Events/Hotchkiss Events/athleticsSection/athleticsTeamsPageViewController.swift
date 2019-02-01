//
//  athleticsTeamsPageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 1/31/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class athleticsTeamsPageViewController: UIViewController
    
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let x = eventReader()
        x.read(file: "")
        
        (segue.source as? athleticsEventViewController)?.event = x.events.first
        
    }
}
