//
//  WorkoutSet.swift
//  UI
//
//  Created by Squall on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import Foundation

class WorkoutSet {
	var name: String = "WorkoutSet"
	var reps: Int = 10
}

class WorkoutName {
	var name: String = "WorkoutName"
	var sets: [WorkoutSet] = []
}

class WorkoutExercise {
	var name: String = "WorkoutExercise"
	var names: [WorkoutName] = []
}

class WorkoutGroup {
	var name: String = "WorkoutGroup"
	var exercises: [WorkoutExercise] = []
}

