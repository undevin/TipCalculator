//
//  CalculatorTextField.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import UIKit

class CalculatorTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.addCornerRadius(radius: 8)
        self.textColor = .black
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        setupPlaceholderText()
    }
    
    func setupPlaceholderText() {
        let currentPlaceholder = self.placeholder ?? ""
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [
            NSAttributedString.Key.foregroundColor : UIColor.lightGray
        ])
    }
}//End of Class

