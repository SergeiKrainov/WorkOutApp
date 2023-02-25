//
//  OverviewNavBar.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

final class OverviewNavBar: BaseView {

    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()

    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue.withAlphaComponent(0.2)
        return view
    }()

    func addAllworkOutAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }

    func addAddButtonAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        addBottonBorder(with: Resources.Colors.separator, height: 1)
    }
}

extension OverviewNavBar {

    override func addViews() {
        super.addViews()
        addView(titleLabel)
        addView(addButton)
        addView(allWorkoutsButton)
        addView(weekView)

    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([

            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),

            allWorkoutsButton.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),

            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }

    override func configure() {
        super.configure()

        backgroundColor = .white

        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)

        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkouts)

        addButton.setImage(Resources.Images.Comon.addButton, for: .normal)
    }
}
