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
    @IBOutlet weak var speakersButton: UIButton?
    @IBOutlet weak var performancesButton: UIButton?
    @IBOutlet weak var entertainmentButton: UIButton?
    
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
