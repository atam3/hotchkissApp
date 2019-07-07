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
    @IBOutlet weak var eventNameLabel: UILabel?
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var dressCodeLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel?
    @IBOutlet weak var mediaButton: UIButton?
    
    
    var event: formalSchoolEvent?
    override func viewWillAppear(_ animated: Bool) {
        eventNameLabel?.text = event?.eventName
        timeLabel?.text = event?.time?.description
        locationLabel?.text = event?.location
        dressCodeLabel?.text = event?.dressCode
        descriptionLabel?.text = event?.description
        
        mediaButton?.addTarget(self, action: #selector(mediaButtonPressed), for: .touchUpInside)
    }

    @objc func mediaButtonPressed()
    {
        let controller = formalEventsMediaViewController()
        //FIXME: this needs to go
        event?.imageNames = ["trails2", "trails2", "trails2", "trails2", "trails2"]
        controller.formalSchoolEvent = event
        navigationController?.pushViewController(controller, animated: true)
    }
}

