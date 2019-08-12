//
//  athleticsTableViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 3/17/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class athleticsTableViewControllerB: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var boysLabel: UILabel?
    @IBOutlet weak var tableViewB: UITableView?
    
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
        
        let labelWidth = bounds.size.width - 41
        let labelHeight = remainingHeight * 0.054
        boysLabel?.frame = CGRect(x: 21, y: logo!.frame.maxY + 2, width: labelWidth, height: labelHeight)
        
        let tableViewWidth = labelWidth
        let tableViewHeight = remainingHeight * 0.882
        tableViewB?.frame = CGRect(x: 21, y: boysLabel!.frame.maxY + 8, width: tableViewWidth, height: tableViewHeight)
        
    }
    
    var events = [athleticsEvent]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle,
                                                                                            reuseIdentifier: "cell")
        
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
        self.tableViewB?.dataSource = self
        self.tableViewB?.delegate = self
        
        
        
    }
    
}
