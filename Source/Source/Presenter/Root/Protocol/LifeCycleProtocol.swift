//
//  LifeCycleProtocol.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import Foundation

/// Needs to monitor UIViewController life cycle function calls
protocol LifeCycleProtocol {
    
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
}
