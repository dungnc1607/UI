//
//  UIBaseVC.swift
//  UI
//
//  Created by Squall on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class UIBaseVC: UIViewController, UINavigationVMProtocol {
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
	
	var vmNavigation: UINavigationVM?
    override func viewDidLoad() {
        super.viewDidLoad()
		setNeedsStatusBarAppearanceUpdate()
		vmNavigation = UINavigationVM(self)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

	func open(vc: UIBaseVC) {
		navigationController?.pushViewController(vc, animated: true)
	}
	
	func close(toRoot: Bool) {
		if toRoot {
			navigationController?.popToRootViewController(animated: true)
		} else {
			navigationController?.popViewController(animated: true)
		}
	}
	
	func closeToVC(_ vc: UIBaseVC) {
		navigationController?.popToViewController(vc, animated: true)
	}
}
