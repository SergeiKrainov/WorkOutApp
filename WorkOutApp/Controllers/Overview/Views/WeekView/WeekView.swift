//
//  WeekView.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

final class WeekView: BaseView {

    private var calendar = Calendar.current

    private let stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()

        setupView(stackView)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppereance() {
        super.configureAppereance()

        stackView.spacing = 7
        stackView.distribution = .fillEqually

        calendar.locale = Locale(identifier: "en_US_POSIX")
        var weekDay = calendar.shortStandaloneWeekdaySymbols

        if calendar.firstWeekday == 1 {
            let sun = weekDay.remove(at: 0)
            weekDay.append(sun)
        }

        weekDay.enumerated().forEach({ index, name in
            let view = WeekDayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        })
    }
}
