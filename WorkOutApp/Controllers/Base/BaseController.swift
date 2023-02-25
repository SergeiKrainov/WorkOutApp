//
//  BaseController.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constraintViews()
        configureAppereance()
    }
}

@objc extension BaseController {

    func setupViews() {}
    func constraintViews() {}
    func configureAppereance() {
        view.backgroundColor = R.Colors.background
    }

    func leftNavBarButtonHandler() {
        print("Left bar button")
    }

    func rightNavBarButtonHandler() {
        print("Right bar button")
    }
}

extension BaseController {

    func addNavBarButton(at position: NavBarPosition, with title: String) {

        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inActive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)

        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftNavBarButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightNavBarButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }

    }
}
