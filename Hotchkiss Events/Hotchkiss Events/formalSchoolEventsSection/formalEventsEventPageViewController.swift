//
//  File.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 1/2/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class formalEventsEventPageViewController: UIViewController
    
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let x = eventReader()
        x.readFormalSchoolEvents(file: "")
        let event = x.formalSchoolEvents[0]
        let y = (segue.destination as? formalEventsEvent1ViewController)
        
        
        y?.eventNameLabel?.text = event.eventName
        y?.descriptionLabel?.text = event.location
        y?.dressCodeLabel?.text = event.dressCode
        y?.event = event
        y?.timeLabel?.text = event.time?.description
        
    }
}
