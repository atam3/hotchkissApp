//
//  athleticsCellViewTableViewCell.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 3/23/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class athleticsCellViewTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView?
    @IBOutlet weak var myLabel: UILabel?
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        mainView?.layer.cornerRadius = 9
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
