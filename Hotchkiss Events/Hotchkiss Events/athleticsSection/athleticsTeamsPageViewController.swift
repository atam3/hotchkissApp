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
    
    @IBOutlet weak var boysButton: UIButton?
    @IBOutlet weak var girlsButton: UIButton?
    
    @IBAction func boysPressed()
    {
        let x = dataFetcher()
        x.fetchAthleticsEvents(file: "athleticsEventsBoys", completion: { (events) in
            let event = events[0]
            let y = athleticsEventViewController()
            y.event = event
            
        })
    }
    
    @IBAction func girlsPressed()
    {
        let x = dataFetcher()
        x.fetchAthleticsEvents(file: "athleticsEventsGirls", completion: { (events) in
            let event = events[0]
            let y = athleticsEventViewController()
            y.event = event
        })
    }
}
