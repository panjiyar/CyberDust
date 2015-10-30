//
//  TableViewCell.swift
//  CyberDust
//
//  Created by Suchit Panjiyar on 10/30/15.
//  Copyright © 2015 Suchit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!

    
}
