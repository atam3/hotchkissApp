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
    @IBOutlet weak var rosterLabel: UILabel?
    
    var event: athleticsEvent?
    override func viewDidLoad()
    {
        teamNameLabel?.text = event?.teamName
        opponentLabel?.text = event?.opponent
        timeLabel?.text = event?.time?.description
        locationLabel?.text = event?.location
        rosterLabel?.numberOfLines = 0
        
        let roster = event!.roster!
        var rosterlayout = ""
        var i = 0
        for _ in 0..<roster.count/2
        {
            rosterlayout+=(roster[i])
            if i + 1 < roster.count
            {
                rosterlayout+=", " + roster[i + 1]
            }
            i = i + 2
            rosterlayout += "\n"
        }
            
            rosterLabel?.text = rosterlayout
        
        
    }
}

