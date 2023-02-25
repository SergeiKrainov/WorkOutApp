//
//  TabBarController.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white

        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()

        let overviewNavigationController = NavBarController(rootViewController: overviewController)
        let sessionNavigationController = NavBarController(rootViewController: sessionController)
        let progressNavigationController = NavBarController(rootViewController: progressController)
        let settingsNavigationController = NavBarController(rootViewController: settingsController)

        overviewNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)

        sessionNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                    image: Resources.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)

        progressNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)

        settingsNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)

        setViewControllers([
            overviewNavigationController,
            sessionNavigationController,
            progressNavigationController,
            settingsNavigationController
        ], animated: false)
    }

}
