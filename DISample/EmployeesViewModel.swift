//
//  EmployeeViewModel.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import Foundation

protocol EmployeesDataSource {
    func employeesCount() -> Int
    func employee(at index: Int) -> Employee
}
struct EmployeesViewModel: EmployeesDataSource {
    var employees: [Employee] = {
        let dibert = Employee(name: "Dilbert", employeeId: 23, designation: .associate)
        let pointyHairedBoss = Employee(name: "Pointy Haired Boss", employeeId: 1, designation: .boss)
        let wally = Employee(name: "Wally", employeeId: 12, designation: .seniorAssociate)
        return [dibert, pointyHairedBoss, wally]
    }()
    func employeesCount() -> Int {
        return employees.count
    }
    func employee(at index: Int) -> Employee {
        return employees[index]
    }
}
