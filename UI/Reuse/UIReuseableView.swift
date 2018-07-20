//
//  UIReuseableView.swift
//  UI
//
//  Created by Tran Manh Quy on 7/19/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

@IBDesignable
class UIRoundButton: UIButton {
	
	@objc @IBInspectable public var cornerRadius: CGFloat = 4 {
		didSet {
			self.layer.cornerRadius = cornerRadius
		}
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		clipsToBounds = true
	}
}

@IBDesignable
class TriangleView : UIView {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override func draw(_ rect: CGRect) {
		
		guard let context = UIGraphicsGetCurrentContext() else { return }
		
		context.beginPath()
		context.move(to: CGPoint(x: rect.minX, y: rect.minY))
		
		
//		context.addArc(
//			center: CGPoint(x: rect.maxX / 2, y: rect.maxY / 2),
//			radius: rect.maxY / 2,
//			startAngle: CGFloat(5*Double.pi/4),
//			endAngle: CGFloat(0),
//			clockwise: true)
		
		context.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
		context.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
		context.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
		context.closePath()
		
		context.setFillColor(red: 73/255, green: 202/255, blue: 141/255, alpha: 1)
		context.fillPath()
	}
}

@IBDesignable
class UIRoundView : UIView {
	
	@objc @IBInspectable public var cornerRadius: CGFloat = 4 {
		didSet {
			self.layer.cornerRadius = cornerRadius
		}
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		clipsToBounds = true
	}
}

@IBDesignable
class UIShadowRoundView : UIRoundView {
	
	@objc @IBInspectable public var hasShadow: Bool = true {
		didSet {
			if hasShadow {
				self.dropShadow()
			} else {
				self.removeShadow()
			}
		}
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		if hasShadow {
			self.dropShadow()
		} else {
			self.removeShadow()
		}
	}
}
