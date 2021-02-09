//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import UIKit

extension UIColor {
    static let mainGreen = UIColor(named: "mainGreen")
    static let secondaryGreen = UIColor(named: "secondaryGreen")
    static let tan = UIColor(named: "tan")
    static let creamsicle = UIColor(named: "creamsicle")
    static let obsidian = UIColor(named: "obsidian")
}//End of Extension

extension UIView {
    
    func addCornerRadius(radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
}
