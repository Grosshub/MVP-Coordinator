//
//  PresenterProtocol.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import Foundation

/// Root presenter protocol
protocol PresenterProtocol: LifeCycleProtocol {

    /// Initialization
    /// - Parameter view: View that managed by presenter
    /// - Parameter coordinator: Coordinator for navigation
    init(view: ViewProtocol, coordinator: CoordinatorProtocol)
    
    /// Returns a view controller
    func getView() -> ViewProtocol
}
