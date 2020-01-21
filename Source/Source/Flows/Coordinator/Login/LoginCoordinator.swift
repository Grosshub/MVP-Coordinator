//
//  LoginCoordinator.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// Login coordinator that shows how to navigate to login screen
struct LoginCoordinator: LoginCoordinatorProtocol {
    
    var navigationController: UINavigationController
    var childCoordinators: [CoordinatorProtocol] = []
    var presenter: PresenterProtocol?
    
    init(navigationController: UINavigationController, childCoordinator: [CoordinatorProtocol]? = nil) {
        
        self.navigationController = navigationController
        
        let view = LoginViewController()
        presenter = LoginPresenter(view: view, coordinator: self)
        view.set(presenter: presenter)
    }
    
    func start() {
        
        if let viewController = presenter?.getView().viewController() {
            navigationController.pushViewController(viewController, animated: true)
        }
    }
}
