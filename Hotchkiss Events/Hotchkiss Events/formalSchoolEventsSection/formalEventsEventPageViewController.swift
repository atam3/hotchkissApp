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
            let y = athleticsTableViewControllerB(nibName: "athleticsTableViewControllerB", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
    
    
    
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
