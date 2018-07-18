//
//  BodyMetricCell.swift
//  UI
//
//  Created by Squall on 7/18/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class BodyMetricCell: UITableViewCell {

    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.layer.cornerRadius = 15
        viewCell.layer.shadowColor = UIColor.black.cgColor
        viewCell.layer.shadowOpacity = 0.5
        viewCell.layer.shadowOffset = CGSize.zero
        viewCell.layer.shadowRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
