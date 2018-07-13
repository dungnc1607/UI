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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dropShadow(object: viewTraining)
        dropShadow(object: viewNutrition)
        dropShadow(object: viewBodyMetrics)
        viewTraining.layer.cornerRadius = 25
        viewNutrition.layer.cornerRadius = 25
        viewBodyMetrics.layer.cornerRadius = 25
        holderView.isUserInteractionEnabled = false
        
        self.imageAvatar.layer.cornerRadius = self.imageAvatar.frame.width/2
        self.imageAvatar.layer.masksToBounds = false
        self.imageAvatar.layer.borderColor = UIColor.white.cgColor
        self.imageAvatar.layer.borderWidth = 1
        self.imageAvatar.clipsToBounds = true
        
        //Nutrition progress bar
        let shapeLayer = CAShapeLayer()
        let center = viewNutrition.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        shapeLayer.lineWidth = 5
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.strokeEnd = 0
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.strokeColor = UIColor.green.cgColor
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
