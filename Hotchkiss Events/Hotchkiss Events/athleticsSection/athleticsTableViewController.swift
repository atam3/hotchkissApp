//
//  athleticsTableViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 3/17/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class athleticsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView?
    var events = [athleticsEvent]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let event = events[indexPath.row]
        cell.textLabel?.text = event.teamName
        cell.detailTextLabel?.text = event.location
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let event = events[indexPath.row]
        let controller = athleticsEventViewController(nibName: "athleticsEventPage", bundle: Bundle.main)
        controller.event = event
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func viewDidLoad()
    {
        let x = eventReader()
        x.readAthleticsEvents(file: "")
        self.events = x.athleticsEvents
        
        tableView?.dataSource = self
        tableView?.delegate = self
    }
    
}
