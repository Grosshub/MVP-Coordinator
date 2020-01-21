//
//  AppCoordinator.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// Root App Coordinator that handes navigation over the app
struct AppCoordinator: CoordinatorProtocol {
    
    fileprivate var window: UIWindow
    var navigationController: UINavigationController
    var childCoordinators: [CoordinatorProtocol] = []
    var presenter: PresenterProtocol?
    
    /// Initialization
    ///
    /// - Parameter window: main backdrop for the app coordinator
    init(window: UIWindow) {
        
        navigationController = UINavigationController()
        self.window = window
        self.window.rootViewController = navigationController
        
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        childCoordinators.append(loginCoordinator)
    }
    
    func start() {
        
        if !childCoordinators.isEmpty {
            
            childCoordinators.first?.start()
            window.makeKeyAndVisible()
        }
    }
}
