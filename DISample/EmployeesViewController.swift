//
//  EmployeesViewController.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import UIKit
import DipUI

class EmployeesViewController: UITableViewController {
    var dataSource: EmployeesDataSource!
    var container: DependencyContainer!

    // MARK: - Configurations
    func configure(cell: UITableViewCell, with employee: Employee) {
        cell.textLabel?.text = employee.name
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.employeesCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseIdentifier, for: indexPath)
        configure(cell: cell, with: dataSource.employee(at: indexPath.row))
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let employee = dataSource.employee(at: indexPath.row)
        let employeeInfo = try! container.resolve(arguments: employee) as PresentableEmployeeInfo

        // Below code works and does not crash in EmployeeDetailViewController-viewDidLoad
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //let detailViewController = storyboard.instantiateViewController(withIdentifier: "EmployeeDetailViewController") as! EmployeeDetailViewController
        // Below code crashes in EmployeeDetailViewController-viewDidLoad due to IBOutlets as nil (if used in place of above code)
        let detailViewController = try! container.resolve(tag: EmployeeDetailViewController.storyboardIdentifier) as EmployeeDetailViewController
        detailViewController.employeeInfo = employeeInfo
        navigationController?.pushViewController(detailViewController, animated: true)
    }

}
