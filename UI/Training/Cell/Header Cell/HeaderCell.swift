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
    let shapeLayer = CAShapeLayer()
    override func awakeFromNib() {
        super.awakeFromNib()
        dropShadow(object: viewTraining)
        dropShadow(object: viewNutrition)
        dropShadow(object: viewBodyMetrics)
        viewTraining.layer.cornerRadius = 25
        viewNutrition.layer.cornerRadius = 25
        viewBodyMetrics.layer.cornerRadius = 25
        
        self.imageAvatar.layer.cornerRadius = self.imageAvatar.frame.width/2
        self.imageAvatar.layer.masksToBounds = false
        self.imageAvatar.layer.borderColor = UIColor.white.cgColor
        self.imageAvatar.layer.borderWidth = 1
        self.imageAvatar.clipsToBounds = true
        
        //Nutrition progress bar
        let center = viewNutrition.center

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
        shapeLayer.strokeColor = UIColor.green.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound

        shapeLayer.strokeStart = CGFloat.pi/4

        viewNutrition.layer.addSublayer(shapeLayer)
        
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
