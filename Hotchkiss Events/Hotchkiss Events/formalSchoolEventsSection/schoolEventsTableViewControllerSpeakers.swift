//
//  formalTableViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 3/17/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class schoolEventsTableViewControllerSpeakers: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var speakersLabel: UILabel?
    @IBOutlet weak var tableViewSpeakers: UITableView?
    
    override func viewDidLayoutSubviews()
    {
        //let view = logo!.superview!
        //view.frame = self.view.bounds.insetBy(self.view.safeAreaInsets)
        
        let bounds = view.bounds
        
        let logoSides = bounds.size.width * 0.3
        logo?.frame = CGRect(x: 0, y: 0, width: logoSides, height: logoSides)
        
        name?.frame = CGRect(x: logo!.frame.maxX, y: 0, width: bounds.size.width - logoSides - 4, height: logoSides)
        name?.adjustsFontSizeToFitWidth = true
        
        let labelWidth = bounds.size.width - 41
        let labelHeight = bounds.size.height * 0.045
        speakersLabel?.frame = CGRect(x: 21, y: logo!.frame.maxY + 2, width: labelWidth, height: labelHeight)
        
        let tableViewWidth = labelWidth
        let tableViewHeight = bounds.size.height * 0.68
        tableViewSpeakers?.frame = CGRect(x: 21, y: speakersLabel!.frame.maxY + 8, width: tableViewWidth, height: tableViewHeight)
    }
    
    var events = [formalSchoolEvent]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let event = events[indexPath.row]
        cell.textLabel?.text = event.eventName
        cell.detailTextLabel?.text = event.location
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let event = events[indexPath.row]
        let controller = formalEventsEvent1ViewController(nibName: "formalEventsEventPage1", bundle: Bundle.main)
        controller.event = event
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func viewDidLoad()
    {
        
        tableViewSpeakers?.dataSource = self
        tableViewSpeakers?.delegate = self
    }
}
