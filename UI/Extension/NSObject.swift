//
//  NSObject.swift
//  UI
//
//  Created by Squall on 7/12/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import Foundation

extension NSObject{
    static var typeName:String{
        return String(describing: self)
    }
	
	var objectName: String {
		return String(describing: type(of: self))
	}
}
