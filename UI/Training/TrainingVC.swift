//
//  TrainingVC.swift
//  UI
//
//  Created by Squall on 7/12/18.
//  Copyright © 2018 Squall. All rights reserved.
//

import UIKit

enum TrainingElement:Int{
    case USER_INFORMATION = 0,
    STEP,
    PROGRESS_PHOTO,
    GOAL,
    INJURY,
    DEFAULT
}

class TrainingVC: ViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.register(UINib(nibName: HeaderCell.typeName, bundle: Bundle.main), forCellReuseIdentifier: HeaderCell.typeName)
        tableview.register(UINib(nibName: TrainingCell.typeName, bundle: Bundle.main), forCellReuseIdentifier: TrainingCell.typeName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension TrainingVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let condition: TrainingElement = TrainingElement(rawValue: indexPath.row)!
        switch condition {
        case .USER_INFORMATION:
            var cell:HeaderCell? = tableView.dequeueReusableCell(withIdentifier: HeaderCell.typeName, for: indexPath) as? HeaderCell
            if !(cell != nil){
                cell = HeaderCell(style: .default, reuseIdentifier: HeaderCell.typeName)
            }
            return cell!
            
        case .STEP:
            var cell: TrainingCell? = tableView.dequeueReusableCell(withIdentifier: TrainingCell.typeName, for: indexPath) as? TrainingCell
            if !(cell != nil){
                cell = TrainingCell(style: .default, reuseIdentifier: TrainingCell.typeName)
            }
            cell?.icon.image = UIImage(named: "ic_shoes")
            cell?.sectionName.text = "Steps"
            return cell!
            
        case .PROGRESS_PHOTO:
            var cell: TrainingCell? = tableView.dequeueReusableCell(withIdentifier: TrainingCell.typeName, for: indexPath) as? TrainingCell
            if !(cell != nil){
                cell = TrainingCell(style: .default, reuseIdentifier: TrainingCell.typeName)
            }
            cell?.icon.image = UIImage(named: "ic_photo")
            cell?.sectionName.text = "Progress Photo"
            cell?.rightIcon.image = UIImage(named: "ic_camera")
            return cell!
            
        case .GOAL:
            var cell: TrainingCell? = tableView.dequeueReusableCell(withIdentifier: TrainingCell.typeName, for: indexPath) as? TrainingCell
            if !(cell != nil){
                cell = TrainingCell(style: .default, reuseIdentifier: TrainingCell.typeName)
            }
            cell?.icon.image = UIImage(named: "ic_goal")
            cell?.sectionName.text = "Goal"
            cell?.rightIcon.image = UIImage(named: "crm_tight")
            return cell!
            
        case .INJURY:
            var cell: TrainingCell? = tableView.dequeueReusableCell(withIdentifier: TrainingCell.typeName, for: indexPath) as? TrainingCell
            if !(cell != nil){
                cell = TrainingCell(style: .default, reuseIdentifier: TrainingCell.typeName)
            }
            cell?.icon.image = UIImage(named: "ic_healthkit")
            cell?.sectionName.text = "Limitation/Injury"
            cell?.rightIcon.image = UIImage(named: "crm_tight")
            return cell!
            
        case .DEFAULT:
            var cell: TrainingCell? = tableView.dequeueReusableCell(withIdentifier: TrainingCell.typeName, for: indexPath) as? TrainingCell
            if !(cell != nil){
                cell = TrainingCell(style: .default, reuseIdentifier: TrainingCell.typeName)
            }
            cell?.icon.image = UIImage(named: "")
            cell?.sectionName.text = ""
            cell?.rightIcon.image = UIImage(named: "")
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let condition: TrainingElement = TrainingElement(rawValue: indexPath.row)!
        switch condition {
        case .STEP, .PROGRESS_PHOTO, .INJURY, .GOAL, .DEFAULT:
            return 55
        case .USER_INFORMATION:
            return 557
        }
    }
    
}
