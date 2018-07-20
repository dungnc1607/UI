//
//  UINavigationVM.swift
//  UI
//
//  Created by Squall on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

protocol UINavigationVMProtocol {
	func open(vc: UIBaseVC)
	func close(toRoot: Bool)
	func closeToVC(_ vc: UIBaseVC)
}

class UINavigationVM: UIBaseVM {
	func openStartWorkOut() {
		let vc = UIStartWorkoutVC(nibName: UIStartWorkoutVC.typeName, bundle: nil)
		ownerView?.open(vc: vc)
	}
}
