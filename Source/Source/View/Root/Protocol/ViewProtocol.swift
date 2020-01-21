//
//  ViewProtocol.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// Root protocol for view.
/// All view controllers should adopt this
protocol ViewProtocol: class {
    
    /// Returns itself
    func viewController() -> UIViewController
    
    /// Updates a presenter property
    /// To be used in coordinators when presenters and view are connecting between each other
    ///
    /// - Parameter presenter: Presenter that controls the view
    func set(presenter: PresenterProtocol?)
}
