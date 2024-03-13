//
//  UIButton+style.swift
//  Lesson12HW
//
//  Created by Виктор Реут on 12.03.24.
//

import UIKit

extension UIButton {
    func styleButton() {
        setTitleColor(.black, for: .normal)
        backgroundColor = .white
        layer.borderWidth = 2
        layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        layer.cornerRadius = self.frame.height / 2
    }
}
