//
//  BaseInfoView.swift
//  WorkOutApp
//
//  Created by Sergey on 25.02.2023.
//

import UIKit

class WABaseInfoView: BaseView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inActive
        return label
    }()
    
    private let button = WAButton(with: .primary)

    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()

    init(with title: String? = nil, buttonTitle: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        
        button.setTitle(buttonTitle)
        button.isHidden = buttonTitle == nil ? true : false

        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        fatalError("init(coder:) has not been implemented")
    }
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }

}

extension WABaseInfoView {

    override func setupViews() {
        super.setupViews()

        setupView(titleLabel)
        setupView(button)
        setupView(contentView)

    }

    override func constraintViews() {
        super.constraintViews()

        let contenTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contenTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 28),

            contentView.topAnchor.constraint(equalTo: contenTopAnchor, constant: contenTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppereance() {
        super.configureAppereance()

        backgroundColor = .clear
    }


}
