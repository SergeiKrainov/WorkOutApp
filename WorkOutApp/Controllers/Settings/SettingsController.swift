//
//  SettingsViewController.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.settings
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }

}
