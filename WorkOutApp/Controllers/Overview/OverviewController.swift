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

        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }


}

extension OverviewController {
    override func addViews() {
        super.addViews()

        view.addView(navBar)

    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }

    override func configure() {
        super.configure()

        navigationController?.navigationBar.isHidden = true
    }
}



