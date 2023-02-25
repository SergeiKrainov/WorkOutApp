//
//  Date + Extension.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

extension Date {
    private var calendar: Calendar {
        Calendar.current
    }
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstDay) ?? self
    }

    func goForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }

    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .weekday, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
