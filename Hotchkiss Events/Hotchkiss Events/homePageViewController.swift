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
        let buttonHeight = (remainingHeight / 2) - 20
        
        athleticsButton?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        
        athleticsImage?.frame = CGRect(x: 8, y: logo!.frame.maxY, width: buttonWidth, height: buttonHeight)
        
        formalSchoolEventsButton?.frame = CGRect(x: 8, y: athleticsButton!.frame.maxY + 8, width: buttonWidth, height: buttonHeight)
        
        formalSchoolEventsImage?.frame = CGRect(x: 8, y: athleticsButton!.frame.maxY + 8, width: buttonWidth, height: buttonHeight)
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        //athleticsButton?.backgroundColor = UIColor.init(displayP3Red: 0.0/255, green: 0.0/255, blue: 1.0/255, alpha: 0.85)
        //formalSchoolEventsButton?.backgroundColor = UIColor.init(displayP3Red: 0.0/255, green: 0.0/255, blue: 1.0/255, alpha: 0.85)
       
        
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
    
    
    

