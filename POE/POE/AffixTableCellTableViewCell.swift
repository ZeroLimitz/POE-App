//
//  AffixTableCellTableViewCell.swift
//  POE
//
//  Created by Brandon Kueker on 7/22/15.
//  Copyright (c) 2015 Brandon Kueker. All rights reserved.
//

import UIKit

class AffixTableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var affixName: UILabel!
    @IBOutlet weak var affixStat: UILabel!
    @IBOutlet weak var affixValue: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
