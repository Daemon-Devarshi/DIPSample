//
//  EmployeeViewModel.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import Foundation

protocol PresentableEmployeeInfo {
    var employeeName: String { get }
    var employeeDesignation: String { get }
    var employeeId: String { get }
}

struct EmployeeViewModel: PresentableEmployeeInfo {
    var employee: Employee
    var employeeName : String {
        return employee.name.capitalized
    }
    var employeeDesignation: String {
        return employee.designation.rawValue.capitalized
    }
    var employeeId: String {
        return String(employee.employeeId)
    }
}
