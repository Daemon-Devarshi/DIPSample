//
//  EmployeeDetailViewController.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import UIKit

class EmployeeDetailViewController: UIViewController {
    var employeeInfo: PresentableEmployeeInfo!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var empIdLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = employeeInfo.employeeName
        empIdLabel.text = employeeInfo.employeeId
        designationLabel.text = employeeInfo.employeeDesignation
    }
}
