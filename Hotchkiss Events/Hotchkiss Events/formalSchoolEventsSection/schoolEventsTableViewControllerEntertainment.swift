//
//  formalTableViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 3/17/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class schoolEventsTableViewControllerEntertainment: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableViewEntertainment: UITableView?
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
        
        
        tableViewEntertainment?.dataSource = self
        tableViewEntertainment?.delegate = self
    }
}
