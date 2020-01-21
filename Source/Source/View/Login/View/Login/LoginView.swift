//
//  LoginView.swift
//  MVPCoordinator
//
//  Created by Alexey Gross on 18.12.2019.
//  Copyright © 2019 Alexey Gross. All rights reserved.
//

import UIKit

/// View presentation for login screen
class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let textView = UITextView(frame: .zero, textContainer: nil)
        textView.backgroundColor = .yellow
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.text = "This is just a template.\nUse this code to start your MVP project."
        addSubview(textView)

        textView.translatesAutoresizingMaskIntoConstraints = false
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            textView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
