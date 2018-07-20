//
//  UIBaseVM.swift
//  UI
//
//  Created by Squall on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class UIBaseVM: NSObject {
	weak var ownerView: UIBaseVC?
	
	init(_ ownerView: UIBaseVC) {
		self.ownerView = ownerView
	}
}
