//
//  LoginPresenter.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import Foundation

/// Presenter responsible for login screen presentation
struct LoginPresenter: LoginPresenterProtocol {
    
    var view: LoginViewProtocol
    var coordinator: CoordinatorProtocol
    
    init(view: ViewProtocol, coordinator: CoordinatorProtocol) {
        
        guard let view = view as? LoginViewProtocol else {
            fatalError()
        }
        
        self.view = view
        self.coordinator = coordinator
    }
    
    func getView() -> ViewProtocol {
        return view
    }
}

// MARK: - LifeCycleProtocol
extension LoginPresenter: LifeCycleProtocol {
    
    func viewDidLoad() {
        view.viewController().title = "Login screen"
        view.update(backgroundColor: .white)
    }
    
    func viewWillAppear(_ animated: Bool) {
        
    }
    
    func viewWillDisappear(_ animated: Bool) {
        
    }
}
