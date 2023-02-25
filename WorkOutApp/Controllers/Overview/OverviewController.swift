//
//  ViewController.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

class OverviewController: BaseController {

    private let navBar = OverviewNavBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .overview)
    }


}

extension OverviewController {
    override func setupViews() {
        super.setupViews()

        view.setupView(navBar)

    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }

    override func configureAppereance() {
        super.configureAppereance()

        navigationController?.navigationBar.isHidden = true
    }
}



