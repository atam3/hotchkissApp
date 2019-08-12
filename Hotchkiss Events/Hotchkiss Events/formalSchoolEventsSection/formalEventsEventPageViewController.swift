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
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var speakersButton: UIButton?
    @IBOutlet weak var speakersImage: UIImageView?
    @IBOutlet weak var performancesButton: UIButton?
    @IBOutlet weak var performancesImage: UIImageView?
    @IBOutlet weak var entertainmentButton: UIButton?
    @IBOutlet weak var entertainmentImage: UIImageView?
    
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
        
        let remainingHeight = bounds.size.height - logo!.frame.size.height
        
        let buttonWidth = bounds.size.width - 16
        let buttonHeight = remainingHeight * 0.309
        speakersButton?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        speakersImage?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        
        performancesButton?.frame = CGRect(x: 8, y: speakersButton!.frame.maxY + 9, width: buttonWidth, height: buttonHeight)
        performancesImage?.frame = CGRect(x: 8, y: speakersButton!.frame.maxY + 9, width: buttonWidth, height: buttonHeight)
        
        entertainmentButton?.frame = CGRect(x: 8, y: performancesButton!.frame.maxY + 9, width: buttonWidth, height: buttonHeight)
        entertainmentImage?.frame = CGRect(x: 8, y: performancesButton!.frame.maxY + 9, width: buttonWidth, height: buttonHeight)
    }
    
    @IBAction func speakersPressed()
    {
        let x = dataFetcher()
        x.fetchFormalSchoolEvents(file: "schoolEventsSpeakers", completion: { (events) in
            let y = schoolEventsTableViewControllerSpeakers(nibName: "schoolEventsTableViewControllerSpeakers", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
    
    @IBAction func performancesPressed()
    {
        let x = dataFetcher()
        x.fetchFormalSchoolEvents(file: "schoolEventsPerformances", completion: { (events) in
            let y = schoolEventsTableViewControllerPerformances(nibName: "schoolEventsTableViewControllerPerformances", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
    
    @IBAction func entertainmentPressed()
    {
        let x = dataFetcher()
        x.fetchFormalSchoolEvents(file: "schoolEventsEntertainment", completion: { (events) in
            let y = schoolEventsTableViewControllerEntertainment(nibName: "schoolEventsTableViewControllerEntertainment", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
}
