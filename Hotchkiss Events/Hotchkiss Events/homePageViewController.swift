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
    @IBOutlet weak var athleticsButton: UIButton?
    @IBOutlet weak var othersButton: UIButton?
    @IBOutlet weak var clubEventsButton: UIButton?
    @IBOutlet weak var formalSchoolEventsButton: UIButton?
    
    override func viewDidAppear(_ animated: Bool)
    {
        athleticsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
    formalSchoolEventsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
        clubEventsButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
        othersButton?.backgroundColor = UIColor.init(displayP3Red: 238.0/255, green: 245.0/255, blue: 254.0/255, alpha: 1.0)
        
        athleticsButton?.addTarget(self, action: #selector(athleticsButtonTap), for: .touchUpInside)
    formalSchoolEventsButton?.addTarget(self, action: #selector(formalSchoolEventsButtonTap), for: .touchUpInside)
        clubEventsButton?.addTarget(self, action: #selector(clubEventsButtonTap), for: .touchUpInside)
        othersButton?.addTarget(self, action: #selector(othersButtonTap), for: .touchUpInside)
        
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
    
    
    

