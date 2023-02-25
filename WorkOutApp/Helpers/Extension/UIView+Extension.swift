//
//  UIView+Extension.swift
//  WorkOutApp
//
//  Created by Sergey on 24.02.2023.
//

import UIKit

extension UIView {

    func addBottonBorder(with color: UIColor, height: CGFloat) {

        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }

    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])

        button.addTarget(self, action: #selector(handleOut), for: [
            .touchUpInside,
            .touchDragOutside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }

    @objc func handleIn() {
        UIView.animate(withDuration: 0.15, animations: { self.alpha = 0.55} )
    }

    @objc func handleOut() {
        UIView.animate(withDuration: 0.15, animations: { self.alpha = 1} )
    }

    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
