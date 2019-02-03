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
        x.read(file: "")
        
        (segue.source as? formalEventsEventPageViewController)?.event = x.events.first
        
    }
}
