//
//  titlePageViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 4/19/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class titlePageViewController: UIViewController {

    @IBOutlet weak var testTitleObject: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewWillAppear(_ animated: Bool) {
        var frame = testTitleObject.frame
        frame.origin.y -= 200
        testTitleObject.frame = frame
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2) {
            
            var frame = self.testTitleObject.frame
            frame.origin.y += 200
            self.testTitleObject.frame = frame
            
        }
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
