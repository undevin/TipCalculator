//
//  CalculatorButton.swift
//  TipCalculator
//
//  Created by Devin Flora on 2/8/21.
//

import UIKit

class CalculatorButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.mainGreen
        self.addCornerRadius()
        self.setTitleColor(.obsidian, for: .normal)
    }
}//End of Class
