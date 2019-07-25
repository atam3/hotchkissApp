//
//  homePageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 12/27/18.
//  Copyright © 2018 Alex Tam. All rights reserved.
//

import UIKit
class homePageViewController:UIViewController
{
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var athleticsButton: UIButton?
    @IBOutlet weak var athleticsImage: UIImageView?
    @IBOutlet weak var formalSchoolEventsButton: UIButton?
    @IBOutlet weak var formalSchoolEventsImage: UIImageView?
    
    override func viewWillLayoutSubviews()
    {
        let bounds = view.bounds
        
        let logoSides = bounds.size.width * 0.3
        logo?.frame = CGRect(x: 0, y: 0, width: logoSides, height: logoSides)
        
        name?.frame = CGRect(x: logo!.frame.maxX, y: 0, width: bounds.size.width - logoSides - 4, height: logoSides)
        name?.adjustsFontSizeToFitWidth = true
        
        let buttonWidth = bounds.size.width - 16
        let buttonHeight = bounds.size.height * 0.38
        athleticsButton?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        
        athleticsImage?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        
        formalSchoolEventsButton?.frame = CGRect(x: 8, y: athleticsButton!.frame.maxY + 10, width: buttonWidth, height: buttonHeight)
        
        formalSchoolEventsImage?.frame = CGRect(x: 8, y: athleticsButton!.frame.maxY + 10, width: buttonWidth, height: buttonHeight)
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        athleticsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
    formalSchoolEventsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
       
        
        athleticsButton?.addTarget(self, action: #selector(athleticsButtonTap), for: .touchUpInside)
    formalSchoolEventsButton?.addTarget(self, action: #selector(formalSchoolEventsButtonTap), for: .touchUpInside)
        
        
    }
    @objc func athleticsButtonTap()
    {
        //let athleticsvc = UIViewController(nibName: "athleticsHomePage", bundle: nil)
        //let nav = self.navigationController
        //nav?.pushViewController(athleticsvc, animated: true)
    }
    @objc func formalSchoolEventsButtonTap()
    {
        //print ("hello")
    }
    @objc func clubEventsButtonTap()
    {
        //print ("hello")
    }
    @objc func othersButtonTap()
    {
        //print ("hello")
    }
    
    
   
    
   
    }
    
    
    

