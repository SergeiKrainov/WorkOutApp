//
//  BaseView.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constraintViews()
        configureAppereance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {

    func setupViews() {}
    func constraintViews() {}
    
    func configureAppereance() {
        backgroundColor = .white
    }
}
