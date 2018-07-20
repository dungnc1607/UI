//
//  UIStartWorkoutCell.swift
//  UI
//
//  Created by Squall on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

let horizontalInset: CGFloat = 20
let roundViewRealWidth = UIScreen.main.bounds.size.width - 30 * 2
let lineWidth = roundViewRealWidth - (2 * horizontalInset)
let heightPerName = CGFloat(70)

class UIStartWorkoutCell: UITableViewCell {
	
	@IBOutlet weak var roundView: UIRoundView!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func setup(content: WorkoutExercise) {

		for index in 0...content.names.count - 1 {
//			let name = content.names[index]
			
			let labelSet = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
			labelSet.textColor = UIColor(hex: "#49CA8D")
			labelSet.updateWidthAndHeight(fromText: "4x")
			var newSetFrame = labelSet.frame
			newSetFrame.origin.y = heightPerName / 2 - labelSet.frame.size.height / 2
			labelSet.frame = newSetFrame
			
			let labelName = UILabel(frame: CGRect(x: 20, y: 15, width: 80, height: 20))
			labelName.textColor = UIColor(hex: "#000000")
			labelName.updateWidthAndHeight(fromText: "Bench Press")
			
			let xName = lineWidth - labelName.frame.size.width
			var newNameFrame = labelName.frame
			newNameFrame.origin.x = xName
			labelName.frame = newNameFrame
			
			let labelReps = UILabel(frame: CGRect(x: 20, y: labelName.frame.origin.y + labelName.frame.size.height, width: 80, height: 20))
			labelReps.textColor = UIColor(hex: "#9c9c9c")
			labelReps.updateWidthAndHeight(fromText: "10 reps, 10 reps")
			
			let xReps = lineWidth - labelReps.frame.size.width
			var newRepsFrame = labelReps.frame
			newRepsFrame.origin.x = xReps
			labelReps.frame = newRepsFrame
			
			let view = UIView(frame: CGRect(x: horizontalInset, y: ((1 + heightPerName) * CGFloat(index)), width: lineWidth , height: heightPerName))
//			view.backgroundColor = UIColor.gray
			
			view.addSubview(labelSet)
			view.addSubview(labelName)
			view.addSubview(labelReps)
			
			roundView.addSubview(view)
			
			if content.names.count > 1 && index < content.names.count - 1 {
				let line = UIView(frame:  CGRect(x: horizontalInset, y: view.frame.maxY, width: lineWidth, height: 1))
				line.backgroundColor = UIColor(hex: "c9c9c9")
				roundView.addSubview(line)
			}
		}
	}
}
