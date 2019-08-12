//
//  titlePageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 4/19/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class titlePageViewController: UIViewController
{

    @IBOutlet weak var titleObject: UIView!
    @IBOutlet weak var titleObject2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewWillAppear(_ animated: Bool) {
        titleObject.center.y -= 300
        titleObject2.center.y -= 300
        
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, animations: {
            self.titleObject.center.y += 300
            self.titleObject2.center.y += 300
            
             //self.titleObject.alpha = 1
        }, completion: { (_) in
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                self.performSegue(withIdentifier: "titlePageSegue", sender: nil)
                
            }
        })

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
