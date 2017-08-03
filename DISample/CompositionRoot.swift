//
//  CompositionRoot.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 03/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import Dip
import DipUI
import UIKit

extension DependencyContainer {
    static func configure() -> DependencyContainer {
        return DependencyContainer { container in
            container.register { EmployeesViewModel() as EmployeesDataSource }
            container.register(tag: EmployeesViewController.storyboardIdentifier) { EmployeesViewController() }.resolvingProperties { container, controller in
                controller.dataSource = try container.resolve() as EmployeesDataSource
                controller.container = container
            }
            container.register { employee in EmployeeViewModel(employee: employee) as PresentableEmployeeInfo }
            container.register(tag: EmployeeDetailViewController.storyboardIdentifier) { EmployeeDetailViewController() as EmployeeDetailViewController }

            DependencyContainer.uiContainers = [container]
        }
    }
}


extension EmployeesViewController:  StoryboardInstantiatable { }
extension EmployeeDetailViewController:  StoryboardInstantiatable { }
