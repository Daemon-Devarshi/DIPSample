//
//  Employee.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import Foundation

enum Designation: String {
    case associate
    case seniorAssociate
    case consultant
    case leadConsultant
    case principleConsultant
    case boss
}

struct Employee {
    var name: String
    var employeeId: Int
    var designation: Designation
}
