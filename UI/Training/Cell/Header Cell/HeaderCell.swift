//
//  HeaderCell.swift
//  UI
//
//  Created by Squall on 7/12/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {
    @IBOutlet weak var viewTraining: UIView!
    @IBOutlet weak var viewNutrition: UIView!
    @IBOutlet weak var viewBodyMetrics: UIView!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var imageAvatar: UIImageView!
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var viewKindBackground: UIView!
    @IBOutlet weak var viewTrainingWhite: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    @IBOutlet weak var viewCalLeft: UIView!
    @IBOutlet weak var viewWeight: UIView!
    @IBOutlet weak var viewBodyFat: UIView!
    
    @IBOutlet weak var icon_X: UIImageView!
    @IBOutlet weak var Mon: UIImageView!
    @IBOutlet weak var Tue: UIImageView!
    @IBOutlet weak var Wed: UIImageView!
    @IBOutlet weak var Thu: UIImageView!
    @IBOutlet weak var Fri: UIImageView!
    @IBOutlet weak var Sat: UIImageView!
    @IBOutlet weak var Sun: UIImageView!
    
    let shapeLayer = CAShapeLayer()
    override func awakeFromNib() {
        super.awakeFromNib()
        dropShadow(object: viewTraining)
        dropShadow(object: viewNutrition)
        dropShadow(object: viewBodyMetrics)
        dropShadow(object: viewBodyFat)
        dropShadow(object: viewWeight)
        
        self.viewTraining.layer.cornerRadius = 25
        self.viewNutrition.layer.cornerRadius = 25
        self.viewBodyMetrics.layer.cornerRadius = 25
        self.viewWeight.layer.cornerRadius = 10
        self.viewBodyFat.layer.cornerRadius = 10
        self.viewCalLeft.layer.cornerRadius = 6
        self.viewKindBackground.layer.cornerRadius = 8
        self.viewTrainingWhite.layer.cornerRadius = 8
        self.buttonStart.layer.cornerRadius = 8
        
        self.imageAvatar.layer.cornerRadius = self.imageAvatar.frame.width/2
        self.imageAvatar.layer.masksToBounds = false
        self.imageAvatar.layer.borderColor = UIColor.white.cgColor
        self.imageAvatar.layer.borderWidth = 1
        self.imageAvatar.clipsToBounds = true
      
        setupTrainingDay()
        
        //Nutrition progress bar
        var center = viewNutrition.center
        center.x -= 18
        center.y += 13
        //Create track layer
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: center, radius: 50, startAngle: -CGFloat.pi/2, endAngle: 2 * CGFloat.pi, clockwise: true)

        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 5
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound
        viewNutrition.layer.addSublayer(trackLayer)

        shapeLayer.path = circularPath.cgPath
//     shapeLayer.strokeColor = UIColor(red: 0, green: 168, blue: 156, alpha: 1).cgColor
        shapeLayer.strokeColor = UIColor.green.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound

        shapeLayer.strokeStart = CGFloat.pi/4

        viewNutrition.layer.addSublayer(shapeLayer)
        
    }
    
    func setupTrainingDay(){
        makeCircleAndColor(object: self.Mon, color: UIColor.green)
        makeCircleAndColor(object: self.Tue, color: UIColor.green)
        makeCircleAndColor(object: self.Wed, color: UIColor.purple)
        makeCircleAndColor(object: self.Thu, color: UIColor.gray)
        makeCircleAndColor(object: self.Fri, color: UIColor.green)
        makeCircleAndColor(object: self.Sat, color: UIColor.gray)
        makeCircleAndColor(object: self.Sun, color: UIColor.green)
        self.icon_X.image = self.icon_X.image!.withRenderingMode(.alwaysTemplate)
        icon_X.tintColor = UIColor.purple
        
    }
    
    func makeCircleAndColor(object: UIImageView ,color:UIColor){
        object.layer.cornerRadius = object.frame.width/2
        object.layer.masksToBounds = false
        object.layer.borderColor = color.cgColor
        object.layer.borderWidth = 1
        object.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func dropShadow(object: UIView){
        object.layer.shadowColor = UIColor.black.cgColor
        object.layer.shadowOpacity = 0.5
        object.layer.shadowOffset = CGSize.zero
        object.layer.shadowRadius = 5
    }
}
