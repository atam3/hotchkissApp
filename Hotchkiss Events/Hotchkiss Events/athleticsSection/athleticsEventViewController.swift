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
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var rosterTab: UILabel?
    @IBOutlet weak var opponentTab: UILabel?
    @IBOutlet weak var timeTab: UILabel?
    @IBOutlet weak var locationTab: UILabel?
    @IBOutlet weak var teamNameLabel: UILabel?
    @IBOutlet weak var opponentLabel: UILabel?
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var rosterLabel: UILabel?
    @IBOutlet weak var mediaButton: UIButton?
    
    override func viewDidLayoutSubviews()
    {
        let view = logo!.superview!
        var insets = self.view.safeAreaInsets
        insets.bottom = 0
        view.frame = self.view.bounds.inset(by: insets)
        
        let bounds = view.bounds
        
        let logoSides = bounds.size.width * 0.3
        logo?.frame = CGRect(x: 0, y: 0, width: logoSides, height: logoSides)
        
        name?.frame = CGRect(x: logo!.frame.maxX, y: 0, width: bounds.size.width - logoSides - 4, height: logoSides)
        name?.adjustsFontSizeToFitWidth = true
        
        let teamNameWidth = bounds.size.width - 86
        let teamNameHeight = bounds.size.height * 0.048
        
        teamNameLabel?.frame = CGRect(x: 43, y: logo!.frame.maxY - 8, width: teamNameWidth, height: teamNameHeight)
        
        let mediaButtonWidth = bounds.size.width - 41
        let mediaButtonHeight = bounds.size.height * 0.23
        
        mediaButton?.frame = CGRect(x: 21, y: teamNameLabel!.frame.maxY + 6, width: mediaButtonWidth, height: mediaButtonHeight)
        
        let tabWidth = bounds.size.width - 41
        let tabHeight = bounds.size.height * 0.045
        
        rosterTab?.frame = CGRect(x: 21, y: mediaButton!.frame.maxY + 12, width: tabWidth, height: tabHeight)
        
        let rosterLabelWidth = bounds.size.width - 41
        let rosterLabelHeight = bounds.size.height * 0.175
        
        rosterLabel?.frame = CGRect(x: 21, y: rosterTab!.frame.maxY + 8, width: rosterLabelWidth, height: rosterLabelHeight)
        
        opponentTab?.frame = CGRect(x: 21, y: rosterLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        let opponentLabelHeight = bounds.size.height * 0.0255
        
        opponentLabel?.frame = CGRect(x: 21, y: opponentTab!.frame.maxY + 8, width: tabWidth, height: opponentLabelHeight)
        
        timeTab?.frame = CGRect(x: 21, y: opponentLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        timeLabel?.frame = CGRect(x: 21, y: timeTab!.frame.maxY + 8, width: tabWidth, height: opponentLabelHeight)
        
        locationTab?.frame = CGRect(x: 21, y: timeLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        locationLabel?.frame = CGRect(x: 21, y: locationTab!.frame.maxY + 8, width: tabWidth, height: opponentLabelHeight)
    }
    
    var event: athleticsEvent?
    override func viewWillAppear(_ animated: Bool) {
        
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
        
        mediaButton?.addTarget(self, action: #selector(mediaButtonPressed), for: .touchUpInside)
    }
    @objc func mediaButtonPressed()
    {
        let controller = athleticsMediaViewController()
        //FIXME: this needs to go
        event?.imageNames = ["trails2", "trails2", "trails2", "trails2", "trails2"]
        controller.athleticsEvent = event
        navigationController?.pushViewController(controller, animated: true)
    }
}

