//
//  formalEventsEvent1PageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 2/2/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class formalEventsEvent1ViewController: UIViewController
{
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var dressCodeLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel?
    
    
    var event: formalSchoolEvent?
    override func viewDidLoad()
    {
        timeLabel?.text = event?.time?.description
        locationLabel?.text = event?.location
        dressCodeLabel?.text = event?.dressCode
        descriptionLabel?.text = event?.description
    }
}

