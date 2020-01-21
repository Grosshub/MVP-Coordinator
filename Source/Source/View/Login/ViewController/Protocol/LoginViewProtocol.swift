//
//  LoginViewProtocol.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// View protocol for login screen
protocol LoginViewProtocol: ViewProtocol {
    
    // TODO: using for testing purpose. To be removed
    /// Updates a background color
    /// - Parameter backgroundColor: View's background color
    func update(backgroundColor: UIColor)
}
