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
        x.readAthleticsEvents(file: "")
        let event = x.athleticsEvents[0]
        let y = (segue.destination as? athleticsEventViewController)
        y?.event = event
        
     
    }
}
