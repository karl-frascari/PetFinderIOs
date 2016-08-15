//
//  MainTableViewCell.swift
//  tableView
//
//  Created by Gustavo Calixto on 10/08/16.
//  Copyright © 2016 Gustavo Calixto. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!

    @IBOutlet weak var cellImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
