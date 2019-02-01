//
//  File.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 1/2/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class athleticsEventViewController: UIViewController
{
    @IBOutlet weak var teamNameLabel: UILabel?
    @IBOutlet weak var opponentLabel: UILabel?
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    //@IBOutlet weak var rosterLabel: UILabel
    
    var event: athleticsEvent?
    override func viewDidLoad()
    {
        teamNameLabel?.text = event?.teamName
        opponentLabel?.text = event?.opponent
        timeLabel?.text = event?.time?.description
        locationLabel?.text = event?.location
        //teamNameLabel?.text = event?.teamName
    }
}

