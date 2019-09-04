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
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var eventNameTab: UILabel?
    @IBOutlet weak var eventNameLabel: UILabel?
    @IBOutlet weak var timeTab: UILabel?
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var locationTab: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var dressCodeTab: UILabel?
    @IBOutlet weak var dressCodeLabel: UILabel?
    @IBOutlet weak var descriptionTab: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel?
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
        
        eventNameLabel?.frame = CGRect(x: 43, y: logo!.frame.maxY - 8, width: teamNameWidth, height: teamNameHeight)
        
        
         
        let mediaButtonWidth = bounds.size.width - 41
        let mediaButtonHeight = bounds.size.height * 0.23
        
        mediaButton?.frame = CGRect(x: 21, y: eventNameLabel!.frame.maxY + 6, width: mediaButtonWidth, height: mediaButtonHeight)
        
        
        let tabWidth = bounds.size.width - 41
        let tabHeight = bounds.size.height * 0.045
        
        timeTab?.frame = CGRect(x: 21, y: mediaButton!.frame.maxY + 12, width: tabWidth, height: tabHeight)
        
        let timeLabelHeight = bounds.size.height * 0.0255
        
        timeLabel?.frame = CGRect(x: 21, y: timeTab!.frame.maxY + 8, width: tabWidth, height: timeLabelHeight)
        
        locationTab?.frame = CGRect(x: 21, y: timeLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        locationLabel?.frame = CGRect(x: 21, y: locationTab!.frame.maxY + 8, width: tabWidth, height: timeLabelHeight)
        
        dressCodeTab?.frame = CGRect(x: 21, y: locationLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        dressCodeLabel?.frame = CGRect(x: 21, y: dressCodeTab!.frame.maxY + 8, width: tabWidth, height: timeLabelHeight)
        
        descriptionTab?.frame = CGRect(x: 21, y: dressCodeLabel!.frame.maxY + 8, width: tabWidth, height: tabHeight)
        
        let descriptionLabelWidth = bounds.size.width - 41
        let descriptionLabelHeight = bounds.size.height * 0.188
        
        descriptionLabel?.frame = CGRect(x: 21, y: descriptionTab!.frame.maxY + 8, width: descriptionLabelWidth, height: descriptionLabelHeight)
    
    }
    
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
        //event?.imageNames = ["trails2", "trails2", "trails2", "trails2", "trails2"]
        controller.formalSchoolEvent = event
        navigationController?.pushViewController(controller, animated: true)
    }
}

