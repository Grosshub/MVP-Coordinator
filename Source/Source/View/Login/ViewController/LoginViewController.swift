//
//  LoginViewController.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// View that shows a content of a login screen
class LoginViewController: UIViewController {

    var presenter: PresenterProtocol?
    private var loginView: LoginView!
    
    override func loadView() {

        loginView = LoginView(frame: UIScreen.main.bounds)
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

// MARK: - LoginViewProtocol
extension LoginViewController: LoginViewProtocol {
    
    func update(backgroundColor: UIColor) {
        self.view.backgroundColor = backgroundColor
    }
    
    func viewController() -> UIViewController {
        return self
    }
    
    func set(presenter: PresenterProtocol?) {
        self.presenter = presenter
    }
}
