//
//  StoryboardIdentifiable.swift
//  DISample
//
//  Created by Devarshi Kulshreshtha on 02/08/17.
//  Copyright © 2017 Devarshi. All rights reserved.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

// Global Confirmance   
extension UIViewController: StoryboardIdentifiable { }
