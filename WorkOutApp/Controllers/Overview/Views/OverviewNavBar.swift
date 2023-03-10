//
//  OverviewNavBar.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Strings.NavBar.overview
        label.textColor = R.Colors.titleGray
        label.font = R.Fonts.helveticaRegular(with: 22)
        return label
    }()
    
    private let allWorkoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(R.Strings.Overview.allWorkouts)
        return button
    }()
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.setImage(R.Images.Comon.addButton, for: .normal)
        return button
    }()

    private let weekView = WeekView()

    func addAllworkOutAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }

    func addAddButtonAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        addBottonBorder(with: R.Colors.separator, height: 1)
    }
}

extension OverviewNavBar {

    override func setupViews() {
        super.setupViews()
        setupView(titleLabel)
        setupView(addButton)
        setupView(allWorkoutsButton)
        setupView(weekView)

    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([

            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),

            allWorkoutsButton.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),

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

    override func configureAppereance() {
        super.configureAppereance()

        backgroundColor = .white
    }
}
