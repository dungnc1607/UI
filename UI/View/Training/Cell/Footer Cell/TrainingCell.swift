//
//  TrainingCell.swift
//  UI
//
//  Created by Squall on 7/12/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class TrainingCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var rightIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func setupData(text: String, text2: String) {
		self.icon.image = UIImage(named: text)
		self.sectionName.text = text2
	}
}
