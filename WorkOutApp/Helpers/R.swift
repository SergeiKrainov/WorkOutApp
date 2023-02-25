//
//  Resources.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

enum R {

    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")

        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }

    enum Strings {

        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }

        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }

        enum Overview {
            static var allWorkouts = "All workouts"
        }
    }

    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "HouseIcon")
                case .session: return UIImage(named: "ClockIcon")
                case .progress: return UIImage(named: "AnalyticsBars")
                case .settings: return UIImage(named: "GearIcon")
                }
            }
        }

        enum Comon {
            static var downArrow = UIImage(named: "down_arrow")
            static var addButton = UIImage(named: "add_button")
        }
    }

    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
