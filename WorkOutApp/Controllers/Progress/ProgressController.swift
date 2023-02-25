//
//  ProgressViewController.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress

        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }

}
