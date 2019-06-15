//
//  imageReader.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 6/15/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit
class imageReader
{
    static func loadImage(named: String)->UIImage?
    {
        if let path = Bundle.main.path(forResource: named, ofType: "jpg")
        {
            return UIImage(contentsOfFile: path)
        }
        return nil
    }
}
