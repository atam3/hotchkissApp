//
//  athleticsTeamsPageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 1/31/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class athleticsTeamsPageViewController: UIViewController
    
{
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var boysButton: UIButton?
    @IBOutlet weak var boysImage: UIImageView?
    @IBOutlet weak var boysLabel: UILabel?
    @IBOutlet weak var girlsButton: UIButton?
    @IBOutlet weak var girlsLabel: UILabel?
    @IBOutlet weak var girlsImage: UIImageView?
    
    override func viewWillLayoutSubviews()
    {
        let bounds = view.bounds
        
        let logoSides = bounds.size.width * 0.3
        logo?.frame = CGRect(x: 0, y: 0, width: logoSides, height: logoSides)
        
        name?.frame = CGRect(x: logo!.frame.maxX, y: 0, width: bounds.size.width - logoSides - 4, height: logoSides)
        name?.adjustsFontSizeToFitWidth = true
        
        let buttonWidth = bounds.size.width - 16
        let buttonHeight = bounds.size.height * 0.324
        boysButton?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        girlsButton?.frame = CGRect(x: 8, y: boysLabel!.frame.maxY, width: buttonWidth, height: buttonHeight)
        //for some reason i made it maxY of the boys label, but it is so far below the boys label??
        boysImage?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        girlsImage?.frame = CGRect(x: 8, y: boysLabel!.frame.maxY, width: buttonWidth, height: buttonHeight)
        //for some reason i made it maxY of the boys label, but it is so far below the boys label??
        
        let labelWidth = bounds.size.width - 16
        let labelHeight = bounds.size.height * 0.064
        boysLabel?.frame = CGRect(x: 8, y: boysButton!.frame.maxY + 6, width: labelWidth, height: labelHeight)
        girlsLabel?.frame = CGRect(x: 8, y: girlsButton!.frame.maxY + 6, width: labelWidth, height: labelHeight)
    }
    
    @IBAction func boysPressed()
    {
        let x = dataFetcher()
        x.fetchAthleticsEvents(file: "athleticsEventsBoys", completion: { (events) in
            let y = athleticsTableViewControllerB(nibName: "athleticsTableViewControllerB", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
    
    @IBAction func girlsPressed()
    {
        let x = dataFetcher()
        x.fetchAthleticsEvents(file: "athleticsEventsGirls", completion: { (events) in
            let y = athleticsTableViewControllerG(nibName: "athleticsTableViewControllerG", bundle: Bundle.main)
            y.events = events
            self.navigationController?.pushViewController(y, animated: true)
        })
    }
}
