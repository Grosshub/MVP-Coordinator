//
//  CoordinatorProtocol.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// Root protocol for coordinators
///
/// + Each Coordinator should adopt this
protocol CoordinatorProtocol {
    
    /// Each coordinator owns a root controller to navigate between screens
    var navigationController: UINavigationController { get set }
    
    /// Presenter that is responsible for UI presentation
    var presenter: PresenterProtocol? { get set }
    
    /// Child coordinators that stored in another coordinator
    var childCoordinators: [CoordinatorProtocol] { get }
    
    /// Start coordinator's screen presentation
    func start()
}

