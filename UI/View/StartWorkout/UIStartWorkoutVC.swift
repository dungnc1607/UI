//
//  UIStartWorkoutVC.swift
//  UI
//
//  Created by Tran Manh Quy on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class UIStartWorkoutVC: UIBaseVC, UIStartWorkoutVMProtocol {
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var buttonStartWorkout: UIButton!
	var workoutGroup: WorkoutGroup = WorkoutGroup()
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.registerCellNib(UIStartWorkoutCell.self)
		let exe1 = WorkoutExercise()
		let exe2 = WorkoutExercise()
		
		let name1 = WorkoutName()
		name1.sets = [WorkoutSet()]
		
		let name2 = WorkoutName()
		name2.sets = [WorkoutSet()]
		let name3 = WorkoutName()
		name3.sets = [WorkoutSet()]
		
		exe1.names = [name1]
		exe2.names = [name2,name3]
		
		workoutGroup.exercises = [exe1, exe2]
		tableView.reloadData()
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
    // MARK: - Initialize
	
	// MARK: - ViewModel action
	func refreshData() {
		print("\(self.objectName): refreshData()")
	}
	
	// MARK: - UI Action
	@IBAction func actionStartWorkout(_ sender: Any) {
		print("\(self.objectName): actionStartWorkout()")
	}
}

extension UIStartWorkoutVC : UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return (workoutGroup.exercises.count)
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell:UIStartWorkoutCell? = tableView.dequeueReusableCell(withIdentifier: UIStartWorkoutCell.typeName, for: indexPath) as? UIStartWorkoutCell
		if !(cell != nil){
			cell = UIStartWorkoutCell(style: .default, reuseIdentifier: UIStartWorkoutCell.typeName)
		}
		cell?.setup(content: (workoutGroup.exercises[indexPath.row]))
		return cell!
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return CGFloat((workoutGroup.exercises[indexPath.row].names.count) * 70 + 20)
	}
}
